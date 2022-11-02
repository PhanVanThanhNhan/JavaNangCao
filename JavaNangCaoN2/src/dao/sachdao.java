package dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;
import bean.sachbean;
public class sachdao {
	public ArrayList<sachbean> dssach= new ArrayList<sachbean>();
	   public ArrayList<sachbean> getsach(){
		   try {
			   //b1 : ket noi csdl
			   CoSodao cs = new CoSodao();
			   cs.KetNoi();
			   //b2: Lay du lieu ve
			   String sql ="select * from sach";
			   PreparedStatement cmd = cs.cn.prepareStatement(sql);
			   ResultSet rs = cmd.executeQuery();
			   while(rs.next()) {
				  String masach = rs.getString("masach");
				  String tensach = rs.getString("tensach");
				  String tacgia = rs.getString("tacgia");
				  long soluong = rs.getLong("soluong");
				  long gia =rs.getLong("gia");
				  String anh =rs.getString("anh");
				  String maloai = rs.getString("maloai");
				  dssach.add(new sachbean(masach, tensach, tacgia, soluong, gia, anh, maloai));
			   }
			   //b3: Dong rs va cn
			   rs.close();
			   cs.cn.close();   
			   return dssach;
		   }catch(Exception e) {
			   e.printStackTrace();
			   return null;
		   }
		   
	   }}