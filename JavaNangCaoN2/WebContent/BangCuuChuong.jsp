<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bảng Cửu Chương</title>
</head>
<body>
	<table border="1" width ="800" align="center" cellpadding="0" cellspacing="1">
		<tr>
			<td colspan="8" align="center">BẢNG CỬU CHƯƠNG</td>
		</tr>
		<tr>
			<td align="center">
				<% for(int j=1; j<=10; j++) { %>
				<p>2 x <%=j %> = <%=2*j %> </p>
				<% } %>
			</td>
			<td align="center">
				<% for(int j=1; j<=10; j++) { %>
				<p>3 x <%=j %> = <%=3*j %> </p>
				<% } %>
			</td>
			<td align="center">
				<% for(int j=1; j<=10; j++) { %>
				<p>4 x <%=j %> = <%=4*j %> </p>
				<% } %>
			</td>
			<td align="center">
				<% for(int j=1; j<=10; j++) { %>
				<p>5 x <%=j %> = <%=5*j %> </p>
				<% } %>
			</td>
			<td align="center">
				<% for(int j=1; j<=10; j++) { %>
				<p>6 x <%=j %> = <%=6*j %> </p>
				<% } %>
			</td>
			<td align="center">
				<% for(int j=1; j<=10; j++) { %>
				<p>7 x <%=j %> = <%=7*j %> </p>
				<% } %>
			</td>
			<td align="center">
				<% for(int j=1; j<=10; j++) { %>
				<p>8 x <%=j %> = <%=8*j %> </p>
				<% } %>
			</td>
			<td align="center">
				<% for(int j=1; j<=10; j++) { %>
				<p>9 x <%=j %> = <%=9*j %> </p>
				<% } %>
			</td>
			
		</tr>
	</table>
</body>
</html>