<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function 게시물등록검사하다(){
	let eContents=document.querySelector("#contents");
	if(eContents.value.length>20000){
		alert("내용은 최대 20000까지입니다.");
		return false;
	}
	return true;
}
</script>
</head>
<body>

게시물등록
<form action="/add" method="post" onsubmit="return 게시물등록검사하다()" >
    제목<input type="text" name="title" size=50 /> <br>
    내용<textarea id="summernote" name="contents" id="contents" cols=50 rows=25></textarea> <br>
    <input type="submit" value="등록" />
</form>

</body>
</html>
<script>
document
$(document).ready(     function() {
	 $('#summernote').summernote();
 });

</script>
