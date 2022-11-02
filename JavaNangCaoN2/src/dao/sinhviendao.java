package dao;

import java.util.ArrayList;

import bean.sachbean;
import bean.sinhvienbean;

public class sinhviendao {
	public ArrayList<sinhvienbean> getsinhvien(){
		   ArrayList<sinhvienbean> dssinhvien= new ArrayList<sinhvienbean>();
		   dssinhvien.add(new sinhvienbean("s1", "Nguyễn Thị T",
				   "Triều thuỷ","thuan7@gmail.com", "img\\a1.jpg","tin"));
		   dssinhvien.add(new sinhvienbean("s2", "Phan Khắc T",
				   "Định cư","trieu@gmail.com","img\\a2.jpg", "tin"));
		   dssinhvien.add(new sinhvienbean("s3", "Hoàng Ngọc L",
				   "Hương Long","long@gmail.com","img\\a3.jpg",  "tin"));
		   dssinhvien.add(new sinhvienbean("s2", "Đoàn Văn M",
				   "An Truyền","minh@gmail.com","img\\a4.jpg", "toan"));
		   dssinhvien.add(new sinhvienbean("s2", "Phan Văn Thành N",
				   "Huế","nhan@gmail.com","img\\a5.jpg", "toan"));
		   dssinhvien.add(new sinhvienbean("s2", "Trần Văn L",
				   "Kinh long","loc@gmail.com","img\\a6.jpg", "ly"));
		   return  dssinhvien;
	   }
	 public ArrayList<sinhvienbean> TimMa(String mamon){
		   ArrayList<sinhvienbean> tam = new ArrayList<sinhvienbean>();
		   ArrayList<sinhvienbean> ds= getsinhvien();
		   for(sinhvienbean s: ds)
			   if(s.getMamon().equals(mamon))
				   tam.add(s);
		   return tam;
	   }
	 public ArrayList<sinhvienbean> Tim(String key){
		   ArrayList<sinhvienbean> tam = new ArrayList<sinhvienbean>();
		   ArrayList<sinhvienbean> ds= getsinhvien();
		   for(sinhvienbean s: ds)
			   if(s.getHoten().toLowerCase().trim().contains(key.toLowerCase().trim())||
					   s.getMamon().toLowerCase().trim().contains(key.toLowerCase().trim())||
					   s.getMasinhvien().toLowerCase().trim().contains(key.toLowerCase().trim())||
					   s.getDiachi().toLowerCase().trim().contains(key.toLowerCase().trim()))
				   tam.add(s);
		   return tam;
	   }
}