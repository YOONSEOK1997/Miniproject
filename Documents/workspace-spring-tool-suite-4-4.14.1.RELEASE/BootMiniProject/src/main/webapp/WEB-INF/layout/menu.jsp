<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">

<!-- add menu -->
<c:set var="root" value="<$=request.getContextPath()%>"/>
<link href="css/webwidget_menu_glide.css" rel="stylesheet" type="text/css"></link>
<%-- <script type="text/javascript" src="${root}/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="${root}/js/webwidget_menu_glide.js"></script> --%>

<style type="text/css">
   body{
      font-size: 1.7rem;
      font-family: 'Jua';
   }
   ul{
   list-style:none;
   }
   ul li{
   width:130px; float:left;
   padding: 10px 20px;
   }
   .menu a{
   color:white;
   }
   ul.menu{
   float: left;
   display: flex;
   justify-content: space-between;
   align-items: center;
   background-color: #263343;
   width: 1170px;
   margin: 0px;
   }
  
  
</style>
</head>
<c:set var="root" value="<%=request.getContextPath() %>"/>
<body>
   <ul class="menu">
         <li>
            <a href="${root}/">Home</a>
         </li>
         <li>
            <a href="${root}/shop/q		">상품등록</a>
         </li>
         <li>
            <a href="${root}/board/list">게시판</a>
         </li>
         <li>
            <a href="${root}/member/list">회원가입</a>
         </li>
         <li>
            <a href="${root}/load/map">오시는길</a>
         </li>
   </ul>
</body>
</html>