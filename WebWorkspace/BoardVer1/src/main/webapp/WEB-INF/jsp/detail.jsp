<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.koreait.board.BoardVO"%>
<%
BoardVO vo = (BoardVO) request.getAttribute("data");
%>
<%
String no = request.getParameter("no");
%>
<!-- object 타입이면 형변환 안해도 된다. (상속관계ㅇ) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디테일</title>
</head>
<body>
	<h1>
<!-- ${param.no},스크립트릿 안써도 되는법 (database 있을 때) -->
		디테일<%=no%></h1>
	detail
	<%=request.getParameter("no")%>
	<div>
		<form action="/delete" method="post">
			<input type="hidden" name="no" value="<%=no %>">
			<input type="submit" value="삭제">
		</form>
		<a href="/mod?no=<%=no %>"><button>수정</button></a>
	</div>
	
	<div>
		제목 :
<!-- ${data.title}, 스크립트릿 안써도 되는법 (database 있을 때) -->
		<%=vo.getTitle()%></div>
	<div><%=vo.getCtnt()%></div>
	<a href="/list"><input type="button" value="목록"></a>
</body>
</html>


<!-- <a href="/del?no=<%=no %>"><button>삭제</button></a> : get방식으로 삭제버튼 만들기 -->
<!-- &{param.no} 이걸로 사용해도 가능 = EL식 -->