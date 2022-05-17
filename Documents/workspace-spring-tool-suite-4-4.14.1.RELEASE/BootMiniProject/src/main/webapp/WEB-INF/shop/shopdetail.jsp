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
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
   body{
      font-size: 1.7rem;
      font-family: 'Jua';
   }
   div.box{
   
   }
</style>

</head>
<script type="text/javascript">
               $(document).ready(function() {
            $("#delbtn").click(function(){
            var choice = confirm("삭제하시겠습니까");
            var del = "delete?num=${dto.num}&currentPage=${currentPage}"
            if(choice){
            location.assign(del);
            alert("삭제되었습니다.");
            };
            });
            });
</script>
<body>
<div style="width: 600px;">
<b style="font-size: 30p;">${dto.sangpum}</b>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
<span class="day">입고일 :${dto.ipgoday}</span>
<br><br>
<b style="font-size: 20px">단가 :
	<fmt:formatNumber value="${dto.price}" type="currency"/>
	</b>
	<b style="float: right; font-size: 14px;">${dto.color }</b>
	<div class="box" style="background-color: ${dto.color}"></div>
	<hr style="clear: both:height: 3px; background-color:gray;">
	${dto.content}
	<br><br>
	<button type="button" class="btn btn-primary btn-lg"
	onclick="location.href='list?currentPage=${currentPage}'">상품목록</button>
	
	<button type="button" id="delbtn" class="btn btn-danger btn-lg"
	<%-- onclick="location.href='delete?num=${dto.num}&currentPage=${currentPage}'" --%>
	>상품삭제</button>
	
 </div>
</body>
</html>