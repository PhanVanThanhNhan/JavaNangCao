<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center"> THÔNG TIN SINH VIÊN</h1>
	<table width="1000">
		<tr>
			<td width="300">
				<a href="mau.jsp?msv=sv1"> Nguyễn Văn Anh</a> <hr>
				<a href="mau.jsp?msv=sv2"> Lê Văn Tèo</a> <hr>
				<a href="mau.jsp?msv=sv3"> Quách Chí Thông</a> <hr>
			</td>
			<td>
				<%String masv=request.getParameter("msv");//lay ve masv vua chon 
					if (masv==null){//neu chay lan dau
						out.print("Ban chay lan dau");
					} else { //khi da chon 1sv %>
						Thong tin cua sinh vien co ma <%=masv %>
				<% } %>
			</td>
		</tr>
	</table>
</body>
</html>