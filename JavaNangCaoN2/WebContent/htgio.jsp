<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bo.sachbo"%>
<%@page import="bo.loaibo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.sachbean"%>
<%@page import="dao.sachdao"%>
<%@page import="bean.loaibean"%>
<%@page import="dao.loaidao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Giỏ Hàng</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
.navbar {
	background-color: #10E8E8;
	border: 0;
}
body{
	background-color: #dc143c22;
}
navbar a:hover {
	color: #fff;
	background-color: #10E8E8;
}

.navbar-inverse .navbar-nav>.active>a {
	color: #fff;
	background-color: #10E8E8;
}

.btn-primary {
	border: none;
	background-color: #10E8E8;
	padding: 6px 8px;
	margin:auto;
	border-radius: 18px;
	width: 130px;
}
.btn-primary:hover {
	opacity: 0.8;
	background-color: crimson;
    border-color: crimson;
    color: #fff;
}

.book {
	display: inherit;
	background-color: #cbcbcb;
	border-radius: 20px;
	padding: 20px;
	cursor: pointer;
}

.book-img {
	width: 234px;
	height: 264px;
	border-radius: 10px;
	transform: scale(1.1);
}

.list-items {
	display: block;
	width: 100%;
	height: 40px;
	padding: 8px 10px;
	border: 1px solid #ccc;
	color: #000;
}

.list-items:hover {
	text-decoration: none;
	background-color: #10E8E8 ;
	color: #fff;
	font-weight: 600;
}
.image:hover{
	transform: scale(1.1);
}
</style>

</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="htsachController">Trang chủ</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="htgio.jsp">Giỏ hàng</a></li>
				<li><a href="#">Thanh toán</a></li>
				<li><a href="#">Lịch sử mua hàng</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="signout.jsp"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li>
					<%
					if (session.getAttribute("user") == null) {
					%> <a href="dangnhap.jsp"> <span
						class="glyphicon glyphicon-log-in"></span> Login
				</a>
				</li>
				<%
				} else {
				%>
				<a href="#"> <span class="glyphicon glyphicon-log-in"></span> Hi
					<%=session.getAttribute("user")%>
				</a>
				<%
				}
				%>
			</ul>
		</div>
	</nav>

	<table width="1000" align="center" class="table">
		<td valign="top" width="200"><p class="text-center" style="margin: 10px auto">DANH MỤC SẢN PHẨM</p>
			<table class="table table-hover">
				<%
				if (request.getAttribute("dsloai") != null) {
					ArrayList<loaibean> dsloai = (ArrayList<loaibean>) request.getAttribute("dsloai");
					for (loaibean l : dsloai) {
				%>
				<a class="list-items" href="htsachController?ml=<%=l.getMaloai()%>">
					<%=l.getTenloai()%></a>
				<%
				}
				}
				%>
			</table>
		</td>
		<td valign="top" width="60%">
			<form action="giohangController" method="GET" id="my_form"></form>
			<table class="table table-hover">
				<thead>
					<tr>
						<th style="width: 5%">STT</th>
						<th style="width: 15%">Sản phẩm</th>
						<th style="width: 24%">Tên sách</th>
						<th style="width: 10%">Đơn giá</th>
						<th style="width: 10%">Số lượng</th>
						<th style="width: 10%">Số tiền</th>
						<th style="width: 20%">Thao tác</th>
						<th style="width: 5%"><input type="submit" form="my_form" class="btn"
							value="xoá" name="btn-cb-del"></th>
					</tr>
				</thead>

				<tbody>
					<%
					int i = 0;
					giohangbo gh = (giohangbo) session.getAttribute("gio");
					if (gh != null)
						for (giohangbean h : gh.ds) {
							i = i + 1;
					%>
					<tr>

						<td data-th="STT">
							<h4><%=i%></h4>
						</td>
						<td data-th="Sản phẩm">
							<div class="row">
								<img src="<%=h.getAnh()%>" alt=""
									class="img-fluid image d-md-block rounded mb-2 shadow "
									style="width: 90px; margin-left: 15px">
							</div>
						</td>
						<td data-th="Tên sách">
							<h4 style="margin-top: 30px"><%=h.getTensach()%></h4>
						</td>
						<td data-th="Đơn giá">
							<h4 style="margin-top: 30px"><%=h.getGia()%></h4>
						</td>

						<td data-th="Số lượng"><input type="number"
							class="form-control form-control-lg text-center"
							style="margin-top: 20px" id=<%=h.getMasach()%>
							value=<%=h.getSoluong()%>></td>
						<td data-th="Đơn giá">
							<h4 style="margin-top: 30px; color: #ee4d2d;"><%=(h.getGia() * h.getSoluong())%></h4>
						</td>
						<td class="actions" data-th="Thao tác">
							<div style="margin-top: 30px">
								<a href="#"
									onclick="location.href='giohangController?hd=update&soluong='+document.getElementById('<%=h.getMasach()%>').value+'&ms=<%=h.getMasach()%>'"
									style="padding-right: 10px"> Cập nhật</a> | <a
									href="giohangController?hd=remove&ms=<%=h.getMasach()%>"
									style="padding-left: 5px"> Trả lại</a>

							</div>
						</td>
						<td><input type="checkbox" form="my_form"
							style="margin-top: 30px" class="Check-box" name="cb-del"
							value=<%=h.getMasach()%>></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
			<div class="float-right text-right">
				<%
				if (gh != null) {
				%>
				<h4>
					<b>(Sản phầm: </b><b style="color: #ee4d2d"><%=i%></b><b> )</b>
				</h4>
				<h2>
					<b>Tổng tiền:</b> <b style="color: #ee4d2d"><%=gh.TongTien()%><b>
				</h2>
				<%
				}
				%>
			</div>
			<div class="row mt-4 d-flex align-items-center">
				<div style="display: flex; padding: 10px 50px 10px 250px;">
					<a class="btn btn-primary" href="htsachController">
					Tiếp tục mua hàng</a>
					<%
					if (gh != null) {
					%>
					<a class="btn btn-primary" href="giohangController?hd=removeall">
					Trả lại	tất cả</a> 
					<a class="btn btn-primary" href="#">Thanh toán</a>
					<%
					}
					%>
				</div>
			</div>
			</div>
		</td>
		<td valign="top" width="20%">
			<form action="htgio.jsp" method="get">
				<input class="form-control" name="txttk" type="text" value=""
					placeholder="Nhap tt"> <br> <input class="btn-primary"
					name="butdn" type="submit" value="Search">
			</form>
		</td>
	</table>
</body>
</html>