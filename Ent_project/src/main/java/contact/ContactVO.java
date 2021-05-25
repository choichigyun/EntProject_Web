package contact;

import java.sql.Date;

public class ContactVO {
	private int no, id;
	private String web_pw, web_content, web_name, admin_content, type, web_title;
	private String filename, filepath;
	private Date web_date;
	private int rating;
	public String getFilename() {
		return filename;
	}



	public void setFilename(String filename) {
		this.filename = filename;
	}



	public String getFilepath() {
		return filepath;
	}



	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	
	public ContactVO() {}

	

	public String getWeb_title() {
		return web_title;
	}



	public void setWeb_title(String web_title) {
		this.web_title = web_title;
	}



	public int getRating() {
		return rating;
	}



	public void setRating(int rating) {
		this.rating = rating;
	}



	public Date getWeb_date() {
		return web_date;
	}



	public void setWeb_date(Date web_date) {
		this.web_date = web_date;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getWeb_pw() {
		return web_pw;
	}

	public void setWeb_pw(String web_pw) {
		this.web_pw = web_pw;
	}

	public String getWeb_content() {
		return web_content;
	}

	public void setWeb_content(String web_content) {
		this.web_content = web_content;
	}

	public String getWeb_name() {
		return web_name;
	}

	public void setWeb_name(String web_name) {
		this.web_name = web_name;
	}

	public String getAdmin_content() {
		return admin_content;
	}

	public void setAdmin_content(String admin_content) {
		this.admin_content = admin_content;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
}
