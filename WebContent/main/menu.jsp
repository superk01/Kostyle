<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"></script>
<style type="text/css">
	#menu{
		position: relative ;
		width: 100%;
		height : 44px;
		background: black;
		color: white;
		font-family: Apercu, Arial, "Helvetica Neue", Helvetica, sans-serif;
	}
	
	#menu li {
		list-style: none;
		float: left;
		margin-right: 50px;
	}
</style>
</head>
<body>
<div id="menu">
	<ul>
		<li><a href ="template.jsp?body=main.jsp">메인</a></li>
		<li><a href ="template.jsp?body=../stats/hitcountindex.jsp">상품리스트</a></li>

	</ul>
</div>
</body>
</html>
