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
      font-family: 'Jua';
      font-size: 1.7rem;
   }
</style>
<script type="text/javascript">
   $(function() {
      //비번체크
      $("#pass2").keyup(function() {
         var p1 = $("#pass1").val();
         var p2 = $(this).val();
         if (p1 == p2) {
            $("b.passok").html("ok").css("color", "blue");
         } else {
            $("b.passok").html("fail").css("color", "red");
         }
      });

      //이메일
      $("#email3").change(function() {
         var s = $(this).val();
         if (s == '-') {
            $("#email2").val("");
            $("#email2").focus();
         } else {
            $("#email2").val(s);
         }
      });
      
    //아이디 중복
      $("#idcheck").click(function(){
         $.ajax({
            type:"get",
         dataType:"json",
         url:"idcheck",
         data:{"id":$("#id").val()},
         success:function(data){
         if(data.count==0){
            $("b.idok").text("ok");
         }else{
            alert("already exist\n put another");
            $("#id").val("");
            $("#id").focus();
            }
         }   
            });
         });
      
   });

   function check(){
         var a = $("b.passok").text();
         if($("b.idok").text()!='ok'){
            alert("press ID check button");
            return false;
         }else if(a!='ok'){
            alert("Invalid login or password.");
            $("#pass1").val("");
            $("#pass2").val("");
            $("#pass1").focus("");
            return false; //action 호출되지 않음
         } else {
            return true;
         }
      }
</script>
</head>
<body>
   <h4>회원가입</h4>
   <form action="insert" method="post" class="form-inline" onsubmit="">
      <table class="table table-bordered" style="width:500px;">
         <tr>
            <th style="width:130px;">이 름 </th>
            <td>
               <input type="text" name="name" style="width:130px;" class="form-control" required="required">
            </td>
         </tr>
         <tr>
            <th style="width:130px;">Id</th>
            <td>
               <input type="text" name="id" id="id" style="width:130px;" class="form-control" required="required">
               <button type="button" class="btn btn-sm btn-danger" id="idcheck">아이디 중복체크</button>
               &nbsp;
               <b class="idok"></b>
            </td>
         </tr>
          <tr>
            <th style="width:130px;">비밀번호 </th>
            <td>
               <input type="password" name="pass" id="pass1" style="width:100px;" class="form-control" required="required" placeholder="password">
               &nbsp;&nbsp;&nbsp;&nbsp;<b>비밀번호 확인</b>
               <input type="password" name="pass" id="pass2" style="width:100px;" class="form-control" required="required" placeholder="비밀번호 확인">
               &nbsp;
               <b class="passok"></b>
            </td>
         </tr>
         <tr>
            <th style="width:130px;">휴대폰</th>
            <!-- 시작 -->
            <td>
               <input type="text" name="hp" style="width:70px;" class="form-control" required="required">
                <b>-</b>
               <input type="text" name="hp" style="width:70px;" class="form-control" required="required">
                <b>-</b>
               <input type="text" name="hp" style="width:70px;" class="form-control" required="required">
            </td>
         </tr>
         <tr>
            <th style="width:130px;">이메일</th>
            <td>
               <input type="text" name="email1" style="width:100px;" class="form-control" required="required">
               <b>@</b>
               <input type="text" name="email2" id="email2" style="width:130px;" class="form-control" required="required">
               <select id="email3">
                  <option value="-">-</option>
                  <option value="naver.com">네이버</option>
                  <option value="gmail.com">구글</option>
                  <option value="daum.com">다음</option>
               </select>
            </td>
         </tr>
         <tr>
            <th style="width:130px;">주소</th>
            <td>
               <input type="text" name="addr" style="width:250px;" class="form-control" required="required">
            </td>
         </tr>
         <tr>
            <td colspan="2" align="center">
            <button type="submit" class="btn btn-info" style="width:150px;">회원가입</button>
         </tr>
      </table>
   </form>
</body>
</html>