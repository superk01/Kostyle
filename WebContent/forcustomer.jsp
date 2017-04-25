<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>고객센터 페이지</title>
</head>
<body>
<h3>고객센터</h3>
<button>자무 묻는 질문</button>
<button>문의 게시판</button>
	<table border="1px solid">
		<thead>
			<tr>
				<th>게시글 번호</th>
				<th>답변 여부</th>
				<th>대상 쇼핑몰</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
		</thead>
		<!-- 게시판 출력  foreach필요-->
		<tbody>
			<tr>
				<td>게시글 번호</td>
				<td>답변 여부</td>
				<td>대상 쇼핑몰</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
			</tr>
		</tbody>
	</table>
	
	<form action="" method="post">
		 <input type="hidden" name="temp" value="temp"></input>
		 <input type="checkbox" name="area" value="b_title">제목</input>
		 <input type="checkbox" name="area" value="b_name">작성자</input>
		 <input type="text" name="searchKey" size="10"></input>
		 <input type="submit" value="검색">
	</form>
	
	<button type="button"><a href="write.jsp">글쓰기</a> </button>
	<button type="button"><a href="forcustomer.jsp">내글보기</a> </button>
	
</body>
</html>