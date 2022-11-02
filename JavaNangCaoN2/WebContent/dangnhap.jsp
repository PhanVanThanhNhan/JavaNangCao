<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: sans-serif;
    box-sizing: border-box;
}
html {
	background-color: #e6e6e6;
	
}
.box__Login {
	margin: 100px auto;
	width: 300px;
	height: 300px;
	background-color: #fff;
    border-radius: 5px;
}
.box__Login--Container {
    padding: 10% 0;
    font-size: 14px;
    text-align: center;
}
input.inp{
	width: 80%;
    background-color: #fff;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-bottom: 1px solid #ccc;
    cursor: pointer;
    font-size: 14px;
}
input.inp:focus {
	border:none;
	border-bottom: 1px solid blue;
    outline: none;
    background-color: #fff;
    cursor: text;
}
input[type=submit] {
  width: 80%;
  background-color: orangered;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  opacity: 0.8;
}
p {
    margin: 10px;
    font-size: 16px;
    color: blue;
    cursor: pointer;
}
p:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	
	<form action="ktdn" method="post">
      <div class="box__Login">
      	<div class="box__Login--Container">
      		<input class="inp" name="txtun" type="text" value="" placeholder="Tài khoản"> <br>
	      	<input class="inp" name="txtpass" type="password" value="" placeholder="Mật khẩu"> <br>
	      	<input name="butdn" type="submit" value="Đăng nhập">
	      	<p>Quên mật khẩu?</p>
	      	<%if(request.getParameter("kt")!=null){
	    	  out.print("Dang nhap sai");
	    	 }%>
      	</div>
      </div>
        

    </form>
</body>
</html>