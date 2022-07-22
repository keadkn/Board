<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/layout.css">
<style>
#submenu {
    height:500px; 
    width:100px;
    float:left;
    padding:10px;
    background-color:#9999ff;
}
#section {
    height:500px; 
    width:610px;
    float:left;
    padding:10px;
}
iframe{
border:none;
height:500px;
width:600px;
}
</style>
</head>
<body>

<div id="navigation_bar">
   <jsp:include page="/WEB-INF/views/menu/navigation_bar.jsp"/>
</div>
</div>
<div id="submenu">
   <jsp:include page="/WEB-INF/views/menu/board_submenu.jsp"/>
</div>
<div id="section">
<iframe src="/list" name="sectionFrame" >

</iframe>    
</div>
<div id="footer">
   <jsp:include page="/WEB-INF/views/menu/footer.jsp"/>
</div>
</body>
</html>
