package dao;

import java.util.ArrayList;

import bean.monhocbean;

public class monhocdao {
	 public ArrayList<monhocbean> getmonhoc(){
		   ArrayList<monhocbean> dsmonhoc= new ArrayList<monhocbean>();
		   dsmonhoc.add(new monhocbean("tin", "kỹ thuật lâp trình"));
		   dsmonhoc.add(new monhocbean("ly", "Vật lý đại cương"));
		   dsmonhoc.add(new monhocbean("toan", "Toán ứng dụng"));
		   return dsmonhoc;
	   }
}