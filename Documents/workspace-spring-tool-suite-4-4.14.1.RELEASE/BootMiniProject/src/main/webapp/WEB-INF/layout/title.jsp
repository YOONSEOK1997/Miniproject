<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beat shop</title>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<link
   href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Gowun+Dodum&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap"
   rel="stylesheet">
<style type="text/css">
 body h2{
color:black;
font-family: 'Lobster';
margin-top:40px;
margin-left: 10px;
width:500px;
	} 
	
body h2 :hover{
color: yellow;
}

 div.search{
 position : absolute;
 top: 52px;
 left: 550px;
 width:350px;
 }
 div.snslogo{
position : relative;
bottom: 30px;
left: 700px;
width:350px;
}  
</style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
   <a href="/">
   <img src="${root}/image/beat.jpg" width="120" height="100" style="float: left;">
  
   <h2 style="float:left">Beat Shop </h2></a>
   <!-- 검색 -->
 
 <div class="search">
<img src="${root}/image/search.jpg" width="30" height="30" style="float: left;">
<input id="keyword" name="keyword" class="inputTypeText" placeholder="상품 검색" value="" type="text" style="text-align: center;">
</div>

<div class="snslogo">
<img src="${root}/image/유튜브2.png" width="30" height="30">
<img src="${root}/image/인스타그램1.png" width="30" height="30">
<img src="${root}/image/카카오톡.png" width="30" height="30">
<img src="${root}/image/트위터1.png" width="30" height="30">
<img src="${root}/image/페이스북.png" width="30" height="30">

</div>
   
  <!--로그인  -->

   <a href="/">
   <img src="${root}/image/title.png" width="1000"></a>
   <div class="login">
      <c:if test="${sessionScope.loginok==null}">
         <button type="button" class="btn btn-success" style="width:100px;" 
         onclick="location.href='${root}/login/form'">로그인</button>
      </c:if> 
         
      <c:if test="${sessionScope.loginok!=null}">
         <b>${sessionScope.loginname}(${sessionScope.loginid}) 님</b>
         &nbsp;&nbsp;
         <button type="button" class="btn btn-danger"
         style="width: 80px "height: 40px" 
         onclick="logout()">Logout</button>
      </c:if>
      </div>
      <script type="text/javascript">
         function logout()
         {
            $.ajax({
               type:"get",
               dataType:"text",
               url:"${root}/login/logout",
               success: function(){
                  location.reload();
               }
            });
         }
      </script>
  <!-- 로그인 -->
</body>
</html>