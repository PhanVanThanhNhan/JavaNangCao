package bo;

import dao.loaidao;

import java.util.ArrayList;

import bean.loaibean;
public class loaibo {
	loaidao ldao= new loaidao();
	ArrayList<loaibean> ds;
	public ArrayList<loaibean> getloai(){
		ds = ldao.getloai();
		return ds;
	}
}