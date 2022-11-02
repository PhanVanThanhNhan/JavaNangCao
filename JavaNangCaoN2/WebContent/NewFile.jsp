<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>
	<table border='1' width ="1000" align="center" cellpadding="0" cellspacing="0">
      <tr bgcolor="red">
          <td colspan="3"> Menu ngang </td>
      </tr>
    <tr>
          <td width="300" valign="top" > 
             <b> Doan code </b>
    <%for(int i=1;i<=100;i++){ %>
         <a href=""> Menu nu <%=i %></a> <br>
         <%} %>         
             </td>
          <td width="800"> Noi dung 1 <hr>Noi dung 1 <hr>Noi dung 1 <hr>Noi dung 1 <hr>Noi dung 1 <hr>
          	 </td>
          <td width="200"> Tim Kiem</td>
    </tr>
    <tr>
        <td colspan="3"> Ban quyen </td>
        </tr>
   </table>
</body>
</html>