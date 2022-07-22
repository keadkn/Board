<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.stone.board.common.Board"  %>
<%@ page import="java.util.ArrayList"  %>
<%     
    ArrayList<Board> 게시물들= (ArrayList<Board>)request.getAttribute("boards");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
a {
  text-decoration: none;
}
ul{
   list-style:none;
}
</style>
</head>
<body>
<h3>게시물 목록</h3>
<ul>
<%for(int 순서=0; 순서<게시물들.size(); 순서++){
	Board 한게시물=게시물들.get(순서);
%>
	<li><%=순서+1 %> 
	    <a href="/detail?no=<%=한게시물.getNo()%>"> <%=한게시물.getTitle()%> </a> 
	    <%=한게시물.getViews()%> 
	    <%=한게시물.getWdate().toString() %>
	    <%=한게시물.getWriter().getName()%> 
	</li>
<%	
} 
%>
</ul>
</body>
</html>
