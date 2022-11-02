<%@page import="bo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String hd = request.getParameter("hd");
	String masach = request.getParameter("ms");

	giohangbo gh;

	gh = new giohangbo();
	if(session.getAttribute("gio")==null){
		session.setAttribute("gio", gh);
	}
	
	String button = request.getParameter("btn-cb-del");
	if(button!=null){
		
		String[] checkboxs =request.getParameterValues("cb-del");
		for(String checkbox: checkboxs){
			gh = (giohangbo) session.getAttribute("gio");
			gh.Xoa(checkbox);
		}
		response.sendRedirect("htgio.jsp");
	}
	else
		if (hd.equals("add")) {
			String tensach = request.getParameter("ts");
			long soluong = (long) 1;
			long gia = Long.parseLong(request.getParameter("gia"));
			String anh = request.getParameter("anh");

			gh = (giohangbo) session.getAttribute("gio");
			gh.Them(masach, tensach, soluong, gia, anh);
			response.sendRedirect("htgio.jsp");}
		 else if (hd.equals("remove")) {

			

			if (hd.equals("remove")) {
				gh = (giohangbo) session.getAttribute("gio");
				gh.Xoa(masach);
			}
			response.sendRedirect("htgio.jsp");
		} else if (hd.equals("update")) {
			long soluong = Long.parseLong(request.getParameter("soluong"));
			
			gh = (giohangbo) session.getAttribute("gio");
			gh.SuaSoLuong(masach, soluong);
			response.sendRedirect("htgio.jsp");
		} else if (hd.equals("removeall")) {

			
			gh = (giohangbo) session.getAttribute("gio");
			gh.XoaAll();
			response.sendRedirect("htgio.jsp");
		}
		session.setAttribute("gio", gh);
	%>
</body>
</html>