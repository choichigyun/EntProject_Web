package common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailAttachment;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.apache.commons.mail.MultiPartEmail;
import org.apache.commons.mail.SimpleEmail;
import org.json.JSONObject;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Service
public class CommonService {
	
	//파일다운로드
	public File fileDownload(HttpSession session
					, HttpServletResponse response
					, String filename, String filepath) {
		File file = new File( session.getServletContext()
					.getRealPath("resources") + "/" + filepath );
		String mime 
		= session.getServletContext().getMimeType(filename);
		
		response.setContentType( mime );
		
		try {
		
		filename = URLEncoder.encode(filename, "utf-8")
							.replaceAll("\\+", "%20"); 
		
		response.setHeader("content-disposition"
						, "attachment; filename=" + filename);	
		ServletOutputStream out = response.getOutputStream();
		FileCopyUtils.copy( new FileInputStream(file), out);
		out.flush();
		
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return file;
	}
	
	//파일업로드
	public String fileUpload(String category
					, MultipartFile file, HttpSession session) {
		//업로드할 서버의 물리적 위치
		String resources 
		= session.getServletContext().getRealPath("resources");
		
		//Study_Spring/.metadata/.../smart/resources
		//    /upload/notice/2021/04/22
		String folder 
		=  resources + "/upload/" + category + "/" 
		+ new SimpleDateFormat("yyyy/MM/dd").format(new Date()); 
		
		File dir = new File(folder);
		if( ! dir.exists() ) dir.mkdirs();
		
		String uuid = UUID.randomUUID().toString() + "_"
					+ file.getOriginalFilename();
		
		try {
			file.transferTo( new File(folder, uuid) );
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return folder.substring(resources.length()+1) 
						+ "/" + uuid;
	}
	
	
	//이메일 보내기
	public void sendEmail(String email, String name, HttpSession session) {
		//1.기본이메일
		//simpleSend(email, name);
		//2.파일첨부이메일
		//attachSend(email, name, session);
		//3.HTML형식의 이메일
		htmlSend(email, name, session);
	}
	private void htmlSend(String email, String name, HttpSession session) {
		HtmlEmail mail = new HtmlEmail();
		
		mail.setHostName("smtp.naver.com");
		mail.setCharset("utf-8");
		mail.setDebug(true);
		
		mail.setAuthentication("ojink2", "비밀번호");
		mail.setSSLOnConnect(true);
		
		try {
			mail.setFrom("ojink2@naver.com", "한울 SMART 관리자");
			mail.addTo(email, name);
			
			mail.setSubject("한울 SMART 과정 - HTML 내용");
			StringBuffer msg = new StringBuffer();
			msg.append("<html>");
			msg.append("<body>");
			msg.append("<a href='https://www.naver.com/'><img src='https://imgnews.pstatic.net/image/469/2021/04/21/0000598638_001_20210421090952673.jpg?type=w647'/></a>");
			msg.append("<hr>");
			msg.append("<h3>한울 스마트 웹앱 개발자 과정</h3>");
			msg.append("<p>가입을 축하합니다!!</p>");
			msg.append("<p>프로젝트까지 마무리하고 취업에 성공하세요~</p>");
			msg.append("</body>");
			msg.append("</html>");
			mail.setHtmlMsg(msg.toString());
			
			EmailAttachment file = new EmailAttachment();
			file.setPath(session.getServletContext()
						     .getRealPath("resources")
						     +"/css/common.css");
			mail.attach(file);
			
			file = new EmailAttachment();
			file.setURL(new URL("https://imgnews.pstatic.net/image/020/2021/04/21/0003352444_001_20210421053906608.jpg?type=w647"));
			mail.attach(file);

			mail.send();//메일 보내기 버튼 클릭
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		
		
		
	}
	private void attachSend(String email, String name, HttpSession session) {
		MultiPartEmail mail = new MultiPartEmail();
		
		mail.setHostName("smtp.naver.com");
		mail.setCharset("utf-8");
		mail.setDebug(true);
		
		mail.setAuthentication("ojink2", "비밀번호");
		mail.setSSLOnConnect(true);
		
		try {
			mail.setFrom("ojink2@naver.com", "한울 SMART 관리자");
			mail.addTo(email, name);
			
			mail.setSubject("한울 SMART 과정 - 파일첨부");
			mail.setMsg("한울 SMART 과정 회원가입을 축하합니다. 첨부파일을 확인하세요!");
			
			EmailAttachment file = new EmailAttachment();
			//첨부할 파일 선택
			//PC의 특정 드라이브에 있는 물리적인 파일을 선택해 파일첨부
			file.setPath("D:\\개발자프로그램\\스프링플러그인.txt");	
			//파일첨부하기버튼 클릭
			mail.attach(file);
			
			//프로젝트 내의 리소스 파일을 선택해 파일첨부
			file = new EmailAttachment();
			file.setPath( session.getServletContext()
						 .getRealPath("resources") 
						 + "/images/hanul.logo.png" );
			mail.attach(file);
			
			//온라인상의 URL 을 지정해 파일첨부
			file = new EmailAttachment();
			file.setURL( new URL("https://imgnews.pstatic.net/image/119/2021/04/21/0002486607_001_20210421132139188.jpeg?type=w647") );
			mail.attach(file);
			
			mail.send();
			
		}catch(EmailException | MalformedURLException e) {
			System.out.println(e.getMessage());
		}
	}
	private void simpleSend(String email, String name) {
		SimpleEmail mail = new SimpleEmail();
		
		//이메일서버지정
		mail.setHostName("smtp.naver.com");
		mail.setCharset("utf-8");
		mail.setDebug(true);
		
		//이메일전송자의 아이디/비번 지정: ojink2@naver.com
		mail.setAuthentication("ojink2", "비밀번호");
		//로그인버튼 클릭
		mail.setSSLOnConnect(true);
		
		try {
			//메일송신자 정보 지정
			mail.setFrom("ojink2@naver.com", "SMART 관리자");
			//메일수신자 정보 지정
			mail.addTo(email, name);
			
			//메일제목 
			mail.setSubject("한울 SMART 과정");
			mail.setMsg(name + "님! SMART 과정 회원가입을 축하합니다~");
			
			//메일보내기버튼 클릭
			mail.send();

		}catch(EmailException e) {
			System.out.println(e.getMessage());
		}
		
	}
	
	
	
	public String requestAPI(StringBuffer url, String property) {
		String result = url.toString();
		
	    try {
	        HttpURLConnection con 
	        	= (HttpURLConnection)new URL(result).openConnection();
	        con.setRequestMethod("GET");
	        con.setRequestProperty("Content-type", "application/json");
	        con.setRequestProperty("Authorization", property);
	        
	        int responseCode = con.getResponseCode();
	        BufferedReader br;
	        if(responseCode>=200 && responseCode<=300) { // 정상 호출
	          br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
	        } else {  // 에러 발생
	          br = new BufferedReader(new InputStreamReader(con.getErrorStream(), "utf-8"));
	        }
	        
	        String inputLine;
	        StringBuffer res = new StringBuffer();
	        while ((inputLine = br.readLine()) != null) {
	          res.append(inputLine);
	        }
	        br.close();
	        con.disconnect();
	        result = res.toString();
	        
	    } catch (Exception e) {
	        System.out.println(e.getMessage());
	    }
	    
		return result;
	}
	
	public String requestAPI(StringBuffer url) {
		String result = url.toString();
		
	    try {
	        HttpURLConnection con 
	        	= (HttpURLConnection)new URL(result).openConnection();
	        con.setRequestMethod("GET");
	        con.setRequestProperty("Content-type", "application/json");
	        
	        int responseCode = con.getResponseCode();
	        BufferedReader br;
	        if(responseCode>=200 && responseCode<=300) { // 정상 호출
	          br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
	        } else {  // 에러 발생
	          br = new BufferedReader(new InputStreamReader(con.getErrorStream(), "utf-8"));
	        }
	        
	        String inputLine;
	        StringBuffer res = new StringBuffer();
	        while ((inputLine = br.readLine()) != null) {
	          res.append(inputLine);
	        }
	        br.close();
	        con.disconnect();
	        result = res.toString();
	        
	    } catch (Exception e) {
	        System.out.println(e.getMessage());
	    }
	    
		return result;
	}
	
	public Map<String, Object> json_list(StringBuffer url) {
		JSONObject json = null;
		json = new JSONObject(requestAPI(url)); //response
		json = json.getJSONObject("response");
		json = json.getJSONObject("body");
		int count = 0;
		if( json.has("totalCount") ) {
			count = json.getInt("totalCount");
		}
		if( json.get("items") instanceof JSONObject )
			json = json.getJSONObject("items");
		else
			json.put("item", "");
		
		json.put("count", count);
		return json.toMap();
	}
}
