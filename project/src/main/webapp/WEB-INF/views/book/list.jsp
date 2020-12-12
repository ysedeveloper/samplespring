<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<title>책 목록</title>
	</head>
	<body>	
		<h1>책 목록</h1>
		<p>
		    <form>
		        <input type="text" placeholder="검색" name="keyword" value="${keyword}" />
		        <input type="submit" value="검색" />
		    </form>			
		</p>
		<table>
			<thead>
				<tr>
					<td>제목</td>
					<td>카테고리</td>
					<td>가격</td>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="row" items="${data}">
				<tr>
					<td>
						<a href="/detail?bookId=${row.book_id}">
							${row.title}
						</a>
					</td>
					<td>${row.category}</td>
					<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${row.price}" /></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<p>
			<a href="/create">생성</a>
		</p>
	</body>
</html>