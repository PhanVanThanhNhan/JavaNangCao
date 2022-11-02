package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.loaibo;
import bo.sachbo;
import bean.loaibean;
import bean.sachbean;

/**
 * Servlet implementation class htsachController
 */
@WebServlet("/htsachController")
public class htsachController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public htsachController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		loaibo loai = new loaibo();
		if (loai.getloai() != null) {
			request.setAttribute("dsloai", loai.getloai());
		}
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		sachbo sdao = new sachbo();
		ArrayList<sachbean> dssach = sdao.getsach();
		String maloai = request.getParameter("ml");
		String giaTriTimKiem = request.getParameter("txttk");
		if (maloai != null) {
			dssach = sdao.TimMa(maloai);
		} else {
			if (giaTriTimKiem != null)
				dssach = sdao.Tim(giaTriTimKiem);
		}

		if (dssach != null) {	
			request.setAttribute("dssach", dssach);
		}
		RequestDispatcher rd = request.getRequestDispatcher("htsach.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
