<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
	body{
	font-family: 'Jua';
	}
 
 div.layout div.info{
   position: absolute;
   width: 200px;
   height: 250px;
   border-radius: 30px;
   border: 2px solid darkblue;
   top: 100px;
   left:20px;
   font-size: 1.5rem;
   }
 body b5{
 font-family: 'Lobster';
 font-size: 2.5rem;
 }

  
 }
 body b3{
 font-size: 1rem;
 }
 
 /* div.login{
 margin-left: 100px;
 } */
 legend.acchidden{
 text-align : center;
 color:black;
 
 }
  div.id{
 margin-left: 10px;
 }
 div.pass{
 margin-left: 10px;
 } 

 p.inputMsg.id{
 margin-left: 10px;
}
 p.inputMsg.password{
 margin-left: 10px;
 }
 div.saveid{
 margin-left: 10px;
 }
 div.keeplogin{
 position : absolute;
 margin-left: 90px;
 top: 170px;
 }
 
 div.btlogin{
 position : absolute;
 top: 200px;
 left: 10px;
 background-color: white;
/* border-radius: 10px; 
border-top-left-radius: 10px; 
border-top-right-radius: 10px; 
border-bottom-left-radius: 10px;
border-bottom-right-radius: 10px;  */
 
 }
/*  div.btn-info{
 background-color: yellow;
 } */
 div.findid{
 position : absolute;
 top: 200px;
 left: 90px;
 }
 div.layout div.box_cs_left
{
	font-size: 1.5rem;
	/* border: 2px solid darkblue;
	border-radius: 30px;
	width: 200px;
	height: 290px;
	position : absolute;
	top: 250px; */
} 
</style>
</head>
<body>
	

<c:if test="${sessionScope.saveid=='yes'}">
      <c:set var="loginid" value="${sessionScope.loginid}"/>
   </c:if>
   <c:if test="${sessionScope.saveid==null || sessionScope.saveid=='no'}"> <!-- 조건 : null을 항상 먼저 주기 -->
      <c:set var="loginid" value=""/>
   </c:if>
      
 <div class="BLogin" id="BLogin">
      <form action="process" method="post" class="form-inline">
			<fieldset>
				<legend class="acchidden">Login</legend>
				<div class="id"><input type="text" class="input01" style="width: 150px" id="txtID" placeholder="ID" value="${loginid}"></div>
				<p class="inputMsg id" >ID를 입력해주세요 </p>
				<div class="pass"><input type="password" class="input01" style="width: 150px"  id="txtPWD" placeholder="password"></div>
				<p class="inputMsg password">비밀번호를 입력해주세요.</p>
				<div class="saveid"><input type="checkbox" id="chkSaveID"  ${loginid==""?"":"checked"}>ID 저장</div> 
				<div class="keeplogin"><input type="checkbox" id="keeplogin">로그인 유지</div> 
				<div class="findid"><button type="submit" >ID/PW 찾기</button></div>
				
				<!--  -->
			<%-- 	<c:if test="${sessionScope.loginok==null}"> --%>
				<div class="btlogin"><button type="submit" onclick="location.href='${root}/login/form'">로그인</button></div>
			<%-- 	</c:if> --%>
				 <!--로그인  -->
			</fieldset>

 
		
		</form>
		</div>
		<!-- 부가정보 -->
		
		<br><br>
		<div class="box_cs_left">
		<h2 class="txt_tel_left font-mss">
		<img src="${root}/image/call.jpg" width="30" height="30" style="float: left;">
		<i class="fa fa-phone" ></i> <c style="color:darkblue"> 02-123-4567</c> </h2>
		<p class="font_basic">AM 09:00~PM 06:00 /<br> 토,일,휴일 <b style="color:red">휴무</b></p>
		<div class="box_info_left font_basic">
		<p>- 전화 전 <a href="">자주 묻는 질문</a>을 <br> 확인해주시기 바랍니다.</p>
		<p>- <a href="">1:1문의</a>를 통해서도 상담이 <br> 가능합니다.</p>
		<p>- 상품 문의는<a href="">Q&amp;A</a>를 이용하여 주시기 바랍니다.</p>
		</div>
		</div>
		<!-- 부가정보-->

	
</body>
</html>