<%@page import="bean.sinhvienbean"%>
<%@page import="dao.sinhviendao"%>
<%@page import="bean.monhocbean"%>
<%@page import="dao.monhocdao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  
<title>Trang Chu</title>
</head>
<style>
	.img-sach{
  		text-align: center;
  		margin: 10px;
  	}
  	.img-rounded {
  		width: 250px;
  		height: 300px;
  		margin: 10px;
  		border-radius: 15px;
  	}
  	.loai:hover {
  		color:red;
  	}

</style>
<body>
	<table width="1000" align="center" border=1>
   <tr><td colspan="3"> <marquee behavior="alternate"><h1 style="color: Blue;"><strong>SINH VIÊN HUSC</h1></marquee> </td></tr>
   <tr>
   		<td valign="top" width="200" > 
   		<table align="center">
	   		<%request.setCharacterEncoding("utf-8");
	   		  response.setCharacterEncoding("utf-8");
	   		   monhocdao loai=new monhocdao();
	   			for(monhocbean m: loai.getmonhoc()){%>
	   			   <tr><td>
	   				  <a href="hienthi.jsp?ml=<%=m.getMamon()%>">
	   				   <%=m.getTenmon()%> </a>
	   				 </td>
	   				</tr>
	   		<%	}
	   		%>
   		 </table>
   		 </td>
   		<td valign="top" width="600" > 
   		<table  width="600">
	   		  <%sinhviendao sdao= new sinhviendao();
	   		   ArrayList<sinhvienbean> dssach;
	   		   String maloai=request.getParameter("ml");
	   		   String key=request.getParameter("txtsv");
	   		   if(maloai!=null)
	   			dssach=sdao.TimMa(maloai);
	   		   else
	   			   if(key!=null)
	   				dssach=sdao.Tim(key);
	   			   else
	   		   			dssach = sdao.getsinhvien();
	   		    int n=dssach.size();
	   		    for(int i=0;i<n;i++){
	   		    	sinhvienbean s=dssach.get(i);
	   		     %>
	   		     <tr>
	   		       <td class="img-sach">
		   		    <img src="<%=s.getAnh() %> " class="img-rounded"> <br>
			   		     <%=s.getHoten() %> <br>
			   		     <%=s.getEmail() %><br>
			   		     <%=s.getDiachi() %><br>
		   		  </td>
		   		   
		   		   <% i++; 
		   		   if(i<n){
		   		     s=dssach.get(i);%>
		   		     <td class="img-sach">
		   		    <img src="<%=s.getAnh() %> " class="img-rounded"> <br>
			   		     <%=s.getHoten() %> <br>
			   		     <%=s.getEmail() %><br>
			   		     <%=s.getDiachi() %><br>
		   		  </td>
		   		     <%} %>
		   		  </tr>
		   		    <%} %>
   		 </table>
   		    </td>
   			<td valign="top" width="200">
	   		
				  <form action="hienthi.jsp" method="post">
			      <input class="form-control"name="txtsv" type="text" value="" placeholder="Tìm kiếm"> <br>
			      <input class="btn-primary" name="btn-search" type="submit" value="Search">
			   	</form> 
	   		 </td>
   </tr>
</table>
</body>
</html>