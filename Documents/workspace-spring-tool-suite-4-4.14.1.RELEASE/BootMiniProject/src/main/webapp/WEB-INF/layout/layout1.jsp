<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beat Shop</title>
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
   hegith: 100%;
   dispaly : flex;
   flex-direction: column;
}


section {
  flex: 1;
}



div.layout div {
   border: 0px solid black;
}
   div.menu :hover{
   	color: yellow;
   }
   a:link{
      text-decoration : none;
      color: black;
   }
   
   a:hover{
      text-decoration: none;
   }
   
   div.layout div.title{
      position: absolute;
      top: 10px;
      left: 300px;
   }
   
   div.layout div.menu{
      position: absolute;
      top: 100px;
      left: 250px;   
   }
   
   div.layout div.info{
   position: absolute;
   left: 30px;
   top: 250px;
   width: 200px;
   height: 200px;
   }
   
   div.layout div.main
   {
   position: absolute;
   left: 250px;
   top: 200px;
   width: 1085px;
   height: 600px;  
   font-family: 'Jua';
   }
   
div.footer_top{
 color: white;
 margin-bottom: 2px;
 	}

 div.container{
 font-size:1.2rem;
 background-color: #263343;

 left: 0px;
 top :1000px;
 width: 100%;
 margin-left: 0px;
 position: absolute;
 }
   div.container :hover{
   color: gold;
   }
#wrapper{
  height: auto;
  min-height: 100%;
  padding-bottom: 0px;
}
footer{
  height: 0px;
  position : relative;
  transform : translateY(-100%);
}


   
   
</style>

</head>
<body>
<div id='wrapper'>
								<div class="container">
<div class="footer_inner clearfix">
				<div class="footer_top_holder">
            			<div class="footer_top">
					<div class="container_inner">
										
<div class="separator  transparent center  " style="margin-top: 8px;margin-bottom: 2px;"></div>



<b5>Beat Shop</b5><br>
(주) Beat Shop<br>
본사 : 서울 강남구 강남대로94길 20, 삼오빌딩 903호 <br>
TEL. 02-123-4567  ㅣ FAX. 070-191-1033 ㅣ E-mail. info@beatshop.com<br><br>
<b3>COPYRIGHT © 2022 WooryByul Inc. ALL RIGHTS RESERVED.</b3>


<div class="separator  transparent center  " style="margin-top: 12px;margin-bottom: 2px;"></div>

</div>
		</div>	
		   </div>
				</div>
							</div>
				
							</div>
							
							<footer></footer>
   <div class="layout">
      <div class="title">
         <tiles:insertAttribute name="title"/>
      </div>
      <div class="menu">
         <tiles:insertAttribute name="menu"/>
      </div>
      <div class="info">
         <tiles:insertAttribute name="info"/>
      </div>
      <div class="main">
         <tiles:insertAttribute name="main"/>
      </div>
 
   </div>
</body>
</html>