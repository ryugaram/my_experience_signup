<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert title here</title>
 <link href="/resources/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body>
<div id="nav">

</div>
 <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                               account
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
<div class="table-responsive">
 <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
 <thead>
  <tr>
   <th>id</th>  
   <th>이름</th>
   <th>이메일</th>
   <th>전화번호</th>
   <th>주소</th>
  </tr>
 </thead>
 
 <tbody >
  
  <c:forEach items="${list}" var="list">
 <tr>

  <td>
  	<a href="/login/info?lno=${list.lno}">${list.lid} </a>
  	</td>
  <td>${list.lname}</td>
  <td>${list.lemail}</td>
  <td>${list.ltel}</td>
  <td>${list.lhome}</td> 
 </tr>
</c:forEach>

 </tbody>
<button type="button" onclick="location.href='/login/join'">글쓰기</button> 
</table>
</div>
</div>
</div>
</div>
 
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <!--  <script src="/resources/assets/demo/datatables-demo.js"></script> // 테이블 핸들링 js--> 
    
</body>
</html>