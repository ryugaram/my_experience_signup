<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 조회</title>
<link href="/resources/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body>
<!-- <form method="post"> -->
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
<input class="form-control py-4" type="text" name="lname" value="${info.lname}"/><br />
</div>
</div>

 <div class="col-md-6">
   <div class="form-group">
<label class="small mb-1">id</label>
<input class="form-control py-4" type="text" name="lid" value="${info.lid}"/><br />
</div>
</div>
</div>

<div class="form-group">
<label class="small mb-1">email</label>
<input class="form-control py-4" type="text" name="lhome" value="${info.lemail}"/><br />
</div>

 <div class="form-row">
 <div class="col-md-6">
  <div class="form-group">
<label class="small mb-1">주소</label>
<input class="form-control py-4" type="text" name="ltel" value="${info.lhome}"/><br />
</div>
</div>

<div class="col-md-6">
 <div class="form-group">
<label class="small mb-1">전화</label>
<input class="form-control py-4" type="text" name="" value="${info.ltel}"/><br />
</div>
</div>
</div>

<!-- <!-- <button type="submit">작성</button>

</form> --> 
<div>
<button type="button" onclick="location.href='/login/modify?lno=${info.lno}'">수정하기</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" onclick="location.href='/login/delete?lno=${info.lno}'">삭제하기</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" onclick="location.href='/login/list'">메인</button>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/scripts.js"></script>
</body>
</html>