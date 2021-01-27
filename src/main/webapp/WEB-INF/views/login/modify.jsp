<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 조회</title>
<link href="/resources/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
 
 <!--다음 주소 api  -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    	<script src="/resources/js/juso.js"></script>
</head>
<body>
<form method="post">
<div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">view</h3></div>
                                    <div class="card-body">
 <div class="form-row">
      <div class="col-md-6">
         <div class="form-group">
<label class="small mb-1">이름</label>
<input class="form-control py-4" type="text" name="lname" value="${info.lname}"/>
</div>
</div>

 <div class="col-md-6">
   <div class="form-group">
<label class="small mb-1">id</label>
<input class="form-control py-4" type="text" name="lid" value="${info.lid}" readonly/> <!-- id변경x -->
</div>
</div>
</div>


<div class="form-group">
<label class="small mb-1">email</label>
<input class="form-control py-4" type="text" name="lemail" value="${info.lemail}" /><br />

</div>

 <div class="form-row">
      <div class="col-md-6">
         <div class="form-group">
<input class="form-control py-4" type="text" id="sample4_postcode" placeholder="우편번호">
</div></div>

      <div class="col-md-6">
         <div class="form-group">
<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="margin-left:40px;margin-top:5px;"><br>

</div></div></div>

<div class="form-row">
      <div class="col-md-6">
         <div class="form-group">  
<input class="form-control py-4" type="text" id="sample4_roadAddress" placeholder="도로명주소" name="lhome" value="${info.lhome}">
</div></div>


      <div class="col-md-6">
         <div class="form-group">
<input class="form-control py-4" type="text" id="sample4_jibunAddress" placeholder="지번주소">
</div></div></div>

<span id="guide" style="color:#999;display:none"></span>

<div class="form-row">
      <div class="col-md-6">
         <div class="form-group">
<input class="form-control py-4" type="text" id="sample4_detailAddress" placeholder="상세주소">
</div></div>

      <div class="col-md-6">
         <div class="form-group">
<input class="form-control py-4" type="text" id="sample4_extraAddress" placeholder="참고항목">
 </div></div></div>
 
 <div class="form-row">
 <div class="col-md-6">
  <div class="form-group">
<label class="small mb-1">비밀번호 변경</label>
<input class="form-control py-4" type="password" name="lpw" <%-- value="${info.lpw} --%>"/><br />
</div>
</div>


<div class="col-md-6">
 <div class="form-group">
<label class="small mb-1">전화</label>
<input class="form-control py-4" type="text" name="ltel" value="${info.ltel}"/><br />
</div>
</div>
</div>

<button type="submit">작성</button>

</form> 
<div>
<%-- <button type="button" onclick="location.href='/login/modify?lno=${info.lno}'">수정하기</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" onclick="location.href='/login/delete?lno=${info.lno}'">삭제하기</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" onclick="location.href='/member/list'">메인</button> --%>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/scripts.js"></script>
</body>
</html>