<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	HttpSession searchKeySession = request.getSession();

	String str="";
	
	if(searchKeySession.getAttribute("searchKeywordJ") != null){
		str = (String) searchKeySession.getAttribute("searchKeywordJ");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../resources/css/header/header.css">
<style type="text/css">
	#heads{
		position: relative;
		width : 100%	;
		height : 100px;
		border: 1px solid black;
	}
</style>
</head>
<body>
<div id="heads">
	
	<div id="search">
		<form id="searchform" name="searchform" action="../searchkeyword.ju" method="get">
			<fieldset>
				<legend>search</legend>
				<input type="text" id="query" name="query" value="<%=str%>">
				<input id="search_btn" type="submit" value="SEARCH">
			</fieldset>
		</form>
	</div>
	
</div>
</body>
</html>