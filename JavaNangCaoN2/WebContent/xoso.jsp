<%@page import="java.util.Random"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
	* {
		margin: 0;
		padding: 0;
	}
</style>
</head>
<body>
	<%
		Calendar n=Calendar.getInstance();
		int ngay=n.get(Calendar.DAY_OF_MONTH);
		int thang=n.get(Calendar.MONTH)+1;
		int nam=n.get(Calendar.YEAR);
	%>

	<div align=right>Hôm nay, ngày <%=ngay %> tháng <%=thang %> năm <%=nam %>.</div>
	Chọn ngày: 
	<select name="ngay">
         <%for(int i=1;i<=31;i++){ %>
         	<option value="<%=i%>" <%=(i==ngay)?"selected":"" %> ><%=i %></option>
         <%} %>
    </select>
	Tháng <select name="thang">
         <%for(int i=1;i<=12;i++){ %>
         	<option value="<%=i%>" <%=(i==thang)?"selected":"" %> ><%=i %></option>
         <%} %>
    </select>   
    Năm <select name="nam">
         <%for(int i=2012;i<=2022;i++){ %>
         	<option value="<%=i%>" <%=(i==nam)?"selected":"" %> ><%=i %></option>
         <%} %>
     </select>
     <hr>
     <table border="1" width ="500" align="center" cellpadding="0" cellspacing="1">
     	<tr>
			<td colspan="2" align="center"><h1>XSMB</h1></td>
		</tr>
		<tr>
			<td width="50" align="center"><h2>ĐB</h2></td>
			<td align="center">
				<h2 style="color: red;">
     				<%Random db=new Random();
     					out.print(db.nextInt(90000)+10000);
     				%>
     			</h2>
			</td>
		</tr>
		<tr>
			<td width="50" align="center"><h2>G1</h2></td>
			<td align="center">
				<h2>
     				<%Random g1=new Random();
     					out.print(g1.nextInt(90000)+10000);
     				%>
     			</h2>
			</td>
		</tr>
		<tr>
			<td width="50" align="center"><h2>G2</h2></td>
			<td align="center">
				<h2>
     				<%Random g2=new Random();
     					for(int i=1;i<=2;i++)
     					{
     						out.print(g2.nextInt(90000)+10000);%>&nbsp;&nbsp;&nbsp;
     					<%}%>
     			</h2>
			</td>
		</tr>
		<tr>
			<td width="50" align="center"><h2>G3</h2></td>
			<td align="center">
				<h2>
     				<%Random g3=new Random();
     					for(int i=1;i<=6;i++)
     					{
     						if(i==4)%> <br>
     						<%out.print(g3.nextInt(90000)+10000);%>&nbsp;&nbsp;&nbsp;
     					<%}%>
     			</h2>
			</td>
		</tr>
		<tr>
			<td width="50" align="center"><h2>G4</h2></td>
			<td align="center">
				<h2>
     				<%Random g4=new Random();
     					for(int i=1;i<=4;i++)
     					{
     						out.print(g4.nextInt(9000)+1000);%>&nbsp;&nbsp;&nbsp;
     					<%}%>
     			</h2>
			</td>
		</tr>
		<tr>
			<td width="50" align="center"><h2>G5</h2></td>
			<td align="center">
				<h2>
     				<%Random g5=new Random();
     					for(int i=1;i<=6;i++)
 						{
 							if(i==4)%> <br>
 							<%out.print(g5.nextInt(9000)+1000);%>&nbsp;&nbsp;&nbsp;
 					<%}%>
     			</h2>
			</td>
		</tr>
		<tr>
			<td width="50" align="center"><h2>G6</h2></td>
			<td align="center">
				<h2>
     				<%Random g6=new Random();
     					for(int i=1;i<=3;i++)
     					{
     						out.print(g6.nextInt(900)+100);%>&nbsp;&nbsp;&nbsp;
     					<%}%>
     			</h2>
			</td>
		</tr>
		<tr>
			<td width="50" align="center"><h2>G7</h2></td>
			<td align="center">
				<h2 style="color:red;">
     				<%Random g7=new Random();
     					for(int i=1;i<=4;i++)
     					{
     						out.print(g7.nextInt(90)+10);%>&nbsp;&nbsp;&nbsp;
     					<%}%>
     			</h2>
			</td>
		</tr>
     </table>
</body>
</html>