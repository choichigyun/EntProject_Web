<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:if test="${page.curBlock gt 1 }">
<!-- <a class="page_first" onclick="go_page(1)"><img alt="" src=""></a> -->
<a class="page_prev" onclick="go_page(${page.beginPage-page.blockPage})"><img src="imgs/leftpointer.png" style="width: 30px; cursor: pointer;"></a>
</c:if>
<c:forEach var="no" begin="${page.beginPage }" end="${page.endPage }">
	<c:if test="${no eq page.curPage }">
		<span style="font-size: 20px;" class="page_on">${no }</span>
	</c:if>
	<c:if test="${no ne page.curPage }">
		<a class="page_off" onclick="go_page(${no})">${no }</a>
	</c:if>
</c:forEach>
<c:if test="${page.curBlock lt page.totalBlock }">
	<a class="page_next" onclick="go_page(${page.endPage+1})"><img src="imgs/rightpointer.png" style="width: 30px; cursor: pointer;"></a>
	<%-- <a class="page_last" onclick="go_page(${page.totalPage })">마지막</a> --%>
</c:if>
	<script type="text/javascript">
function go_page(no){
	$('[name=curPage]').val(no);
	$("#contact_detail").submit();
}
</script>
<style>
.page_on, .page_off, .page_next, .page_prev
	, .page_last, .page_first{
	display:inline-block; line-height:30px; margin:0;
}
.page_next, .page_prev, .page_last, .page_first{
}
.page_next { background:url("imgs/page_next.jpg") center no-repeat; }
.page_last { background:url("imgs/page_last.jpg") center no-repeat; }
.page_first { background:url("imgs/page_first.jpg") center no-repeat; }
.page_on, .page_off{
	min-width:22px;  padding:0 5px 2px;
}
.page_on{
	color:#000;  font-weight:bold;
}
.page_off{
	cursor: pointer;
}
</style>