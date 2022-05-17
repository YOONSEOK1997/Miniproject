<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beat Shopping</title>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<link
   href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Gowun+Dodum&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap"
   rel="stylesheet">

<style type="text/css">
body {
   font-size: 2rem;
   font-family: 'Jua';
}

div.layout2 div {
   border: 1px solid black;
}

   body{
   font-size: 2rem;
   font-family: 'Jua';
   }
   
   div.layout2 div{
      border : 0px solid black;
   }
  
   div.menu :hover{
   	color: yellow;
   }
   div.container :hover{
   color: gold;
   }
   a:link{
      text-decoration : none;
      color: black;
   }
   
   a:hover{
      text-decoration: none;
   }
   
   div.layout2 div.title{
      position: absolute;
      top: 10px;
      left: 300px;
   }
   
   div.layout2 div.menu{
      position: absolute;
      top: 100px;
      left: 300px;   
   }
   
   div.layout2 div.info{
   position: absolute;
   left: 30px;
   top: 250px;
   width: 200px;
   height: 200px;
   }
   
   div.layout2 div.main
   {
   position: absolute;
   left: 300px;
   top: 150px;
   width: 1000px;
   height: 600px;  
   font-family: 'Jua';
   }
	div.main{
	width: 100%;
	}
body h2{
color:darkblue;
font-family: 'Lobster';
margin-top:40px;
margin-left: 1px;
	} 
	
</style>
</head>
<body>
   <div class="layout2">
      <div class="title">
       <!-- <h1> 오시는길.....</h1> -->
        <a href="/">
   <img src="${root}/image/woori.jpg" width="120" height="100" style="float: left;">
  
   <h2 style="float:left">Beat Shopping</h2></a>
   
       </div>
       <div class="menu">
         <tiles:insertAttribute name="menu"/>
      </div>
      <div class="main">
         <tiles:insertAttribute name="main"/>
         
      </div>
      <!-- 시작 -->
   
      
      
   </div>
</body>
</html>