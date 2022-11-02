<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
body{
	margin: 0;
	padding: 0;
	font-family: montserrat;
	background: linear-gradient(120deg, #2980b9, #8e44ad);
	height: 100vh;
	overflow: hidden;
}

* {
    padding: 0px;
    margin: 0px;
    font-family: sans-serif;
    box-sizing: border-box;
}
main {
    min-height: 1000px;
    padding: 7.5px 15px;
    text-align:center;
}

footer {
    background-color: #cccccc;
    min-height: 70px;
    padding: 15px;
}



.login-form {
    
    max-width: 400px;
    margin: 130px auto;
    background-color: #ffffff;
    padding: 15px;
    border: 2px dotted #cccccc;
    border-radius: 10px;
}

h1 {
    color: #009999;
    font-size: 20px;
    margin-bottom: 30px;
}

.input-box {
    margin-bottom: 15px;
}

.input-box input {
    padding: 10px 15px;
    width: 100%;
    border: 1px solid #cccccc;
    outline: none;
}

.btn-box {
	
    text-align: right;
    margin-top: 30px;
}

.btn-box button {
    padding: 7.5px 15px;
    border-radius: 2px;
    background-color: #009999;
    color: #ffffff;
    border: none;
    outline: none;
    cursor: pointer;
    border-radius: 4px;
 }

.btn-box button:hover {
    opacity: 0.7;
    color: white;
}

a {
text-decoration: none;
color: #0190f3;
}

a:hover {
text-decoration: underline;}

.sign_up{
    position:relative;
    top:55px;
    right:125px;
   
}



</style>
<title>Đăng ký tài khoản</title>
</head>
<body>

	<main>
            <div class="container">
	            <div class="login-form">
	                <form action="htsachController" method="post">
	                    <h1>Đăng ký vào Web</h1>
	                    <div class="input-box">
	                        <input type="text" name="username" value="" required="required" placeholder="Tên đăng nhập">
	                    </div>
	                    <div class="input-box">   
	                        <input type="password" name="password" value="" required="required" placeholder="Nhập mật khẩu">
	                    </div>
	                    <div class="input-box">
	                        <input type="text" name="password2" value="" required="required" placeholder="Nhập lại mật khẩu">
	                    </div>
	                    <div class="input-box">
	                        <input type="text" name="address" value="" required="required" placeholder="Địa chỉ">
	                    </div>
	                    <div class="input-box">
	                        <input type="text" name="phone" value="" required="required" placeholder="Số điện thoại">
	                    </div>
	                    <div class="input-box">
	                        <input type="text" name="email" value="" required="required" placeholder="Email">
	                    </div>
	                    <div class="sign_up">
	                        <a href="ktdn">Đăng nhập ở đây</a>
	                    </div>
	                    <div class="btn-box">
	                        <button type="submit" value="Login">Đăng ký</button>
	                    </div>
	                </form>
	            </div>
            </div>
     </main>




</body>
</html>