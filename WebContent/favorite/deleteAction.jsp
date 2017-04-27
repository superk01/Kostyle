<%@page import="favorite.model.FavoriteService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="favorite" class="favorite.model.Favorite"></jsp:useBean>
<jsp:setProperty property="*" name="favorite"/>

<%
	String num = request.getParameter("f_num"); //b_id 파라미터값 가져오기 
	String f_num=null;
	if (num != null) {
		f_num = num;
	}
	FavoriteService service = FavoriteService.getInstance();
	int re = service.deleteFavoriteService(favorite);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	if(re>0){%>
	
<script>

	alert("삭제가 완료되었습니다.");
	location.href="favorite.jsp";

</script>	
<%
	}else{
		response.sendRedirect("favorite.jsp");
	}
%>
	
	
</head>
<body>

</body>
</html>