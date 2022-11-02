<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="test1.jsp" method="get">
		<input name="txtn" type="number"> <br>
		<input name="butdn" type="submit" value="Tong">
	</form> <br>
	<%
		String nn=request.getParameter("txtn");
	//Tao bien sesion
	if(session.getAttribute("s")==null)//Neu chua tao
	session.setAttribute("s", 0);
	if(nn!=null){
		int n=Integer.parseInt(nn);
		//b1: gan bien seission cho 1 bien
		int ss=(int)session.getAttribute("s");
		ss=ss+n;
		session.setAttribute("s", ss);
		out.print("Tong: " + session.getAttribute("s"));
	}
	%>
	<a href="htsach.jsp">Mo Trang Chu</a>
</body>
</html>