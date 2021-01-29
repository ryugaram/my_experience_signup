<!DOCTYPE html>
<html lang="ko">
    <head>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>회원가입</title>
        <link href="/resources/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/scripts.js"></script>
        
        <!--다음 주소 api  -->
    	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    	<script src="/resources/js/juso.js"></script>
    	
    <!--이유 모르게 css 변경 안되어서 직접 스타일 지정  -->
    <style>
    .bg-primary1 {
  background-color: #e4ebf3 !important ;
	}
    </style>
    <script>function check_input() {

        if (!document.check.lid.value)
        // login_form 이름을 가진 form 안의 id_val 의 value가 없으면
        {
            alert("아이디를 입력하세요!");
            document.check.lid.focus();
            // 화면 커서 이동
           return false;
        }
        
         if (!document.check.lpw.value)
        {
            alert("비밀번호를 입력하세요!");
            document.check.lpw.focus();
            // 화면 커서 이동
            return false;
        }
         if (!document.check.lname.value)
        {
            alert("이름을 입력하세요!");
            document.check.lname.focus();
            // 화면 커서 이동
           return false;
        }
         if (!document.check.lemail.value)
        {
            alert("이메일을 입력하세요!");
            document.check.lemail.focus();
            // 화면 커서 이동
            return false;
        }
        if (!document.check.lhome.value)
        {
            alert("집주소를 입력하세요!");
            document.check.lhome.focus();
            // 화면 커서 이동
            return false;
        }
         if (!document.check.ltel.value)
        {
            alert("전화번호 입력하세요!");
            document.check.ltel.focus();
            // 화면 커서 이동
            return false;
        }
        else{
        	check.submit();
       	}
     }
    </script>
    </head>
    <body class="bg-primary1">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Account</h3></div>
                                    <div class="card-body">
                                        <form method="post" name="check">
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputFirstName"> Name</label>
                                                        <input class="form-control py-4" name="lname" id="inputFirstName" type="text" placeholder="Enter name" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputLastName">ID</label>
                                                        <input class="form-control py-4" id="inputLastName" name="lid" type="text" placeholder="Enter ID" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress">Email</label>
                                                <input class="form-control py-4" id="inputEmailAddress" type="email" name="lemail" aria-describedby="emailHelp" placeholder="Enter email address" />
                                            </div>
                                            <div>
                                            
												<input  type="text" id="sample4_postcode" placeholder="우편번호">
												<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br><br/>
												<div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
												
												<input class="form-control py-4" type="text" name="lhome" id="sample4_roadAddress" placeholder="도로명주소">
												</div>
												</div>
												  <div class="col-md-6">
                                                    <div class="form-group">
												<input class="form-control py-4" type="text" id="sample4_jibunAddress" placeholder="지번주소">
												</div>
												</div>
												</div>
												
												<span id="guide" style="color:#999;display:none"></span>
												
												 <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
												<input class="form-control py-4" type="text" id="sample4_detailAddress" placeholder="상세주소">
												</div>
												</div>
												<div class="col-md-6">
                                                    <div class="form-group">
												<input class="form-control py-4" type="text" id="sample4_extraAddress" placeholder="참고항목">
                                            </div>
                                            </div></div></div>
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputPassword">Password</label>
                                                        <input class="form-control py-4" id="inputPassword" name="lpw" type="password" placeholder="Enter password" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputConfirmPassword">tel</label>
                                                        <input class="form-control py-4" id="inputConfirmPassword" name="ltel" type="text" placeholder="tel" />
                                                    </div>
                                                </div>
                                            </div>
                                         
                                        <!--  <button type="submit">작성</button> -->
                                         <button class="btn btn-primary btn-block" type= "button" onclick="check_input()">Create Account</button>
                                            
                                          <!--   <a class="btn btn-primary btn-block" href="/login/list">Create Account</a></div> -->
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="small"><a href="/login/login">Have an account? Go to login</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
       
    </body>
</html>
