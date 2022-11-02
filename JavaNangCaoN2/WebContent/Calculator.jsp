
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Calculator</title>
<style>
	* {
		margin: 0;
		padding: 0;
	}
	input[type=submit] {
		width: 24px;
		height: 24px;
		margin: 2px;
	}
	input[type=text] {
		width: 148px;
	}
</style>
</head>
<body>
	<marquee><h1 align="center">Máy tính</h1></marquee>
	<hr><br>
	<%
		double kq=0;
		if(request.getAttribute("bkq")!=null)
			kq=(double)request.getAttribute("bkq");
	%>
 <form action="test" method="post">
       a= <input name="txta" type="number" value="0"> <br>
       b= <input name="txtb" type="number" value="0"> <br>
       kq= <input name="txtkq" type="number" value="<%=kq%>"> <br>
       
       <input name="butc" type="submit" value="+"> 
       <input name="butt" type="submit" value="-">
       <input name="butn" type="submit" value="*">
       <input name="butchia" type="submit" value="/">
    </form>
</body>
</html>