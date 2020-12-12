<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<title>책 상세</title>
	</head>
	<body>
		<h1>책 상세</h1>
		<p>제목 : ${ data.title } </p>
		<p>카테고리 : ${ data.category }</p>
		<p>가격 : <fmt:formatNumber type="number" maxFractionDigits="3" value="${data.price}" /></p> 
		<p>입력일 : <fmt:formatDate value="${data.insert_date}" pattern="yyyy.MM.dd HH:mm:ss" /></p>
		
		<p>
			<a href="/update?bookId=${bookId}">수정</a>
		</p>
		<form method="POST" action="/delete">
			<input type="hidden" name="bookId" value="${bookId}" />
			<input type="submit" value="삭제" />
		</form>
		<p>
			<a href="/list">목록으로</a>
		</p>
	</body>
</html>