<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đăng Ký</title>
	<style type="text/css">
		html {
	    	font-family: Arial, Helvetica, sans-serif;
		}
		form {
	    	font-size: 12px; 
	    	min-height: 300px;
	    	width: 800px;
	    	border: 1px solid #000;
	    	margin: auto;
		}
		header {
	   		padding: 5px;
	    	background-color: #1a83d2;
	    	font-weight: 600;
	    	color: #fff;
		}
		p, div, img {
	    	margin: 8px 12px;
		}
		input[type=text] {
	    	width: 305px;
	    	height: 25px;
		}
		input {
	    	margin-right: 10px;
		}
		.list {
			width: 80px;
	    	height: 30px;
	    	text-align: center;
		}
	</style>
</head>
<body>
	<form action="">
        <header>ĐĂNG KÝ</header>
        <p>Đăng ký nhanh qua Facebook</p>
        <img src="https://tailieu.vn/static/b2013az/templates/version1/default/images/btnfb277x45.jpg" alt="login with Facebook">
        <p style="color: #0080AF;">Đăng ký mới bằng tài khoản TaiLieu.VN</p>
        <p>Bạn cần kích hoạt tài khoản qua Email sau khi đăng ký để nhận ngay 50 ePoints thưởng từ TaiLieu.VN</p>
        <div>
            <input class="ip" type="text" placeholder="Nhập Username">
            <input class="ip" type="text" placeholder="Nhập Họ và Tên">
        </div>
        <div>
            <input class="ip" type="password" placeholder="Nhập mật khẩu">
            <select  class="list" id="gt" name="gt">
                <option value="">Giới Tính</option>
                <option value="">Nam</option>
                <option value="">Nữ</option>
              </select>
        </div>
        <div>
            <input class="ip" type="password" placeholder="Nhập lại mật khẩu">
            <select class="list" id="date" name="date">
                <option value="">Ngày Sinh</option>
                <%for(int i=1;i<=31;i++){ %>
         <option value=""><%=i %></option>
         <%} %>
            </select>
            <select class="list" id="month" name="month">
                <option value="">Tháng</option>
                <%for(int i=1;i<=12;i++){ %>
         <option value=""><%=i %></option>
         <%} %>
            </select>
            <select class="list" id="year" name="year">
                <option value="">Năm</option>
                <%for(int i=1960;i<=2022;i++){ %>
         <option value=""><%=i %></option>
         <%} %>
            </select>
        </div>
        <div>
            <input class="ip" type="text" placeholder="Nhập địa chỉ Email">
            <select class="list" id="city" name="city">
                <option value="">Tỉnh/TP</option>
                <option value="">Huế</option>
                <option value="">Hà Nội</option>
              </select>
        </div>
        <div style="display: flex;">
            <input class="ip" type="text" placeholder="Nhập lại địa chỉ Email">
            <input style="width: 130px" class="ip" type="text" placeholder="Nhập mã xác nhận">
            <img style="margin-top: -4px;" src="https://scontent.xx.fbcdn.net/v/t1.15752-9/299285359_597749535395797_138214047842905576_n.png?stp=cp0_dst-png&_nc_cat=107&ccb=1-7&_nc_sid=aee45a&_nc_ohc=y6yZkOnp-hoAX-O9b4K&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVKFe4j3lKaT3xeZ_IQC9W5SmLBx4MqGKDEw1USAgK-efw&oe=633A62CD" alt="code">
            <p style="color: #0080AF;">Chọn mã xác nhận khác.</p>
        </div>
        <div>
            <button style="background-color: #44afd6;color: #fff; border-radius: 4px; border: none; padding: 5px; ">Đăng ký</button>
            <input type="checkbox">Tôi đồng ý với các Chính Sách và Thỏa Thuận Sử Dụng của TaiLieu.VN
        </div>
        <p style="color: #0080AF;">Bạn đã có tài khoản TaiLieu.VN? Đăng nhập</p>   
    </form>
</body>
</html>