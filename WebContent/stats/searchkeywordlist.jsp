<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<br>
	<table border="1">
		<thead>
			<tr>
				<td>c_num</td>
				<td>sk_searchkey</td>
				<td>sk_date</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="searchkey" items="${SearchKeywordListJ }">
			<tr>
				<td>${searchkey.c_num}</td>
				<td>${searchkey.sk_searchkey}</td>
				<td>${searchkey.sk_date}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>