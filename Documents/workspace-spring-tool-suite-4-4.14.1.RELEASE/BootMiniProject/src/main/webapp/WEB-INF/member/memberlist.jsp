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
   div.member.table{
   	font-size: 1.2rem;
   }
</style>
<script type="text/javascript">
   //전체 체크
   $(function () {
      $("#allcheck").click(function() {
         var chk=$(this).is(":checked");//체크상태확인
         console.log(chk);
         if(chk){
            $(".del").prop("checked",true);//속성변경(true/false일 경우는 prop사용)
         }else{
            $(".del").prop("checked",false);
         }   
      });
      //delete 버튼
      $("#btnmemberdel").click(function (){
         //체크한 인원수 구하기
         var len=$(".del:checked").length;
         //0명일 경우 "먼저 삭제할 회원을 선택해주세요"
         if(len==0){
            alert("삭제할 회원을 선택해주세요.")
            return;
         }
         //체크한 곳의 num가져오기
         var nums="";
         $(".del:checked").each(function(i,element){
               var num=$(this).attr("num");
               //console.log(num);
               nums+=num+",";
         });
         //마지막 , 제거
         nums=nums.substring(0,nums.length-1);
         //alert(nums);
         
         $.ajax({
            type:"get",
            dataType:"text",
            data:{"nums":nums},
            url:"delete",
            success:function(data){
               alert("삭제되었습니다.");
               //새로고침
               location.reload();
            }
         });
      });
   });
</script>
</head>
<body>
<button type="button" class="btn btn-info"
	style="width: 150px;" onclick="location.href='form'">회원가입</button>
	
   <h2> 총 ${totalCount}명의 회원이 있습니다</h2>
  
 <hr>
 <div class="member table">
 <table class="table table-bordered" style="width: 700px;">
 <caption><b>전체 회원 명단</b></caption>
 <tr style="background-color: #ddd">
 	<th style="width: 50px">번호</th>
 	<th style="width: 70px">이름</th>
 	<th style="width: 70px">아이디</th>
 	<th style="width: 130px">핸드폰</th>
 	<th style="width: 300px">주소</th>
 	<th style="width: 80px">
 	<input type="checkbox" id="allcheck">
 	삭제</th>
 
 	</tr>
 	<c:forEach var="dto" items="${list}" varStatus="i">
 	<tr>
 	<td>${i.count}</td>
 	<td>${dto.name}</td>
 	<td>${dto.id}</td>
 	<td>${dto.hp}</td>
 	<td>${dto.addr}</td>
 	<td>
 		<input type="checkbox" class="del" num="${dto.num}">
 		</td>
 		</tr>
 	</c:forEach>
 </table>
 </div>
 <button type="button" class="btn btn-danger btn-sm"
 style="margin-left: 600px;" id="btnmemberdel">Delete</button>
   
</body>
</html>