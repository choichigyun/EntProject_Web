<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form id="review_admin_reply" method="post" action="${url}">
	<input type="hidden" name="id" value="${id}" />
	<input type="hidden" name="curPage" value="${page.curPage}" />
	<input type="hidden" name="search" value="${page.search}" />
	<input type="hidden" name="keyword" value="${page.keyword}" />
	<input type="hidden" name="pageList" value="${page.pageList}" />
</form>
<script>
$('#review_admin_reply').submit();
</script>