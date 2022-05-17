<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
   body{
      font-size: 2rem;
      font-family: 'Jua';
   }
   .writeform{
   	margin-left: 300px;
   }
</style>
</head>
<body>
   <c:if test="${sessionScope.loginok==null}">
   	<script type="text/javascript">
   	alert("다시 로그인 후 글쓰기를 시도해 주세요");
   	location.href='../login/form';
   	</script>
   	</c:if>
   <form action="insert" class="writeform" method="post" enctype="multipart/form-data">
   	<!-- hidden 5개 -->
   	<input type="hidden" name="currentPage" value="${currentPage}">
   	<input type="hidden" name="num" value="${num}">
   	<input type="hidden" name="reg" value="${reg}">
   	<input type="hidden" name="restep" value="${restep}">
   	<input type="hidden" name="relevel" value="${relevel}">
   	
      <table class="table table-bordered boardform" style="width: 500px;">
      <caption><h3>${num==0?"글쓰기":"답글쓰기"}</h3></caption>
      <tr>
         <th style="width: 100px; background-color: #FFE3EE" >제목</th>
         <td>
            <input type="text" name="subject" class="form-control"
               required="required" autofocus="autofocus"
               placeholder="제목을 입력해주세요.">
         </td>
      </tr>
      <tr>
         <th style="width: 100px; background-color: #FFE3EE" >사진들</th>
         <td>
            <input type="file" name="upload" class="form-control" multiple="multiple">
         </td>
      </tr>
      <tr>
         <td colspan="2">
            <textarea style="width: 100%; height: 100px;" name="content" class="form-control"
               required="required"></textarea>
         </td>
      </tr>
      <tr>
         <td colspan="2" align="center">
            <button type="submit" class="btn btn-default" style="width: 100px;">글저장</button>
         </td>
      </tr>
   </table>
   </form>
</body>
</html>
