<%@page import="bo.sachbo"%>
<%@page import="bo.loaibo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.sachbean"%>
<%@page import="dao.sachdao"%>
<%@page import="bean.loaibean"%>
<%@page import="dao.loaidao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	transition: all .2s linear;
	font-family: sans-serif;
    box-sizing: border-box;
}
/*body{
 background-color: #dc143c22; 
}*/
.navbar {
	position: fixed;
	z-index: 1000;
	top: 0;
	left: 0;
	right: 0;
	border-radius: 0;
	border: 0;
	margin: 0;
}

.navbar-inverse .container-fluid>.navbar-brand>.active>a {
	color: #fff;
	background-color: #10E8E8;
}

.container-fluid a {
	color: #9d9d9d !important;
}

.container-fluid a:hover {
	color: #10E8E8 !important;
	background: #000 !important;
}

table {
	margin-top: 80px;
	width: 100%;
	border: 0;
}

.list-items {
	display: block;
	width: 100%;
	height: 40px;
	padding: 0px 20px 0px 10px;
	border: 1px solid #ccc;
	color: #000;
}

.list-items:hover {
	text-decoration: none;
	background-color: #10E8E8;
	color: #fff;
	font-weight: 600;
}

.list {
	display: flex;
	flex-wrap: wrap;
	flex: 0 0 60%;
	max-width: 100%;
	/*Lock lại */
	position: relative;
	top: 0;
	height: calc(100vh - 48px);
	padding-top: 0.5rem;
	overflow-x: hidden;
	overflow-y: auto;
}

.ctn {
	text-align: center;
	padding: 20px;
	margin: 5px auto;
}

.ctn:hover {
	background-color: #d3d3d3;
}
.ctn .img{
    overflow: hidden;
	border-radius: 5px ;
}
.sach-img {
	width: 240px;
	height: 280px;
	border-radius: 10px;
}
.ctn:hover{
	transform: scale(1.1);
}
.sach-name {
	max-width: 240px;
}

.btn-primary {
	border: none;
	background-color: #10E8E8;
	padding: 6px 8px;
	border-radius: 18px;
	width: 100px;
}

.btn-primary:hover {
	opacity: 0.8;
	background-color: crimson;
    border-color: crimson;
    color: #fff;
}

.form-control {
	width: 200px;
	margin: 10px auto 0;
}

</style>
<title>Bookstore</title>
</head>
<body>

	<nav class="navbar navbar-inverse" style="color: #10E8E8">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand active" href="htsachController">Trang chủ</a>
			</div>
			<ul class="nav navbar-nav">
				<li class=""><a href="giohangController">Giỏ hàng</a></li>

				<li><a href="#">Thanh toán</a></li>
				<li><a href="#">Lịch sử mua hàng</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<%
			if (session.getAttribute("DangNhap") == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="ktdn"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
			<%
			} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="logout"><span
						class="glyphicon glyphicon-user"></span> Log Out</a></li>
				<li><a><span>Xin chào, <%=session.getAttribute("DangNhap")%>!
					</span></a></li>
			</ul>
			<%
			}
			%>
			</ul>
		</div>
	</nav>
	<table border='1'>
		<tr>
			<td valign="top" style="left: 50px ;width: 20%;"><p class="text-center"
					style="margin: 10px auto">DANH MỤC SẢN PHẨM</p> <%
 if (request.getAttribute("dsloai") != null) {
 	ArrayList<loaibean> dsloai = (ArrayList<loaibean>) request.getAttribute("dsloai");
 	for (loaibean l : dsloai) {
 %> <a class="list-items"href="htsachController?ml=<%=l.getMaloai()%>"> <%=l.getTenloai()%></a>
				<%
				}
				}
				%></td>
			<td style="width: 60%" align="center">
					<div class="list">
						<%
						if (request.getAttribute("dssach") != null) {
							ArrayList<sachbean> dssach = (ArrayList<sachbean>) request.getAttribute("dssach");
							for (sachbean s : dssach) {
						%>
						<div class="ctn">
							<div class="img">
								<img src="<%=s.getAnh()%>" alt="avatar" class="sach-img" />
							</div>
							<h3 class="sach-name"><%=s.getTensach()%></h3>
							<a
								href="giohangController?hd=add&ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>&anh=<%=s.getAnh()%>">
								<img alt="" src="mua.jpg">
							</a>
						</div>

						<%
						}
						}
						%>
					</div>
					<div class="pagination-container">
		<ul class="pagination">
			<c:if test = "${tag>1 }"> 
				<li><a href="ChuDeSach?page=${tag-1 }">Previous</a></li>
			</c:if>
			<c:forEach begin="1" end="${endPage }" var="i">
				<li><a class="${tag==i?'active':''}" href="ChuDeSach?page=${i }">${i }</a></li>
			</c:forEach>
			<c:if test = "${tag < endPage }">
				<li><a href="ChuDeSach?page=${tag+1 }">Next</a></li>
			</c:if>
		</ul>
	</div>
	<div class="MenuTrang"></div>

			</td>
			<td valign="top" style="width: 20%">
				<form style="text-align: center;" action="htsachController"
					method="get">
					<input class="form-control" type="text" name="txttk"
						placeholder="Tìm kiếm..."> <br> <input
						class="btn-primary" type="submit" value="Tìm kiếm">
				</form>
			</td>
		</tr>
	
	</table>

</body>
</html>