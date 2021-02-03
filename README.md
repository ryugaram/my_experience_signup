# my_experience_signup
spring + mybatis + mysql 로 회원가입 구현

# ver.

1. spring framework 4.3.8

2. java 1.8

3. mysql 8.0

# 시연 영상
https://www.youtube.com/watch?v=KLsly1i46N4

# 추가적으로


<pre>
<code>
int count=(int)service.login(vo);
		if(count==1)
			return "redirect:/login/list";
		else {
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<script>alert('ID 혹은 비밀번호를 확인해주세요'); history.go(-1);</script>");
        out.flush();
</code>
</pre>

count로 아이디 비밀번호 맞게 입력되어있는지 확인후 count 값이 1이 아니라면 alert창 

#

<img src = "https://user-images.githubusercontent.com/38341106/106709536-0a2f3600-6638-11eb-83c9-e797695d880a.png" width="70%">

mysql 단방향 SAH1 사용해서 비밀번호 암호화

