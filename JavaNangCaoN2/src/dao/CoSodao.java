package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class CoSodao {
	public Connection cn;

	public void KetNoi() {
		// b1: Xac dinh he qtcsdl
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("1");
			cn = DriverManager
					.getConnection("jdbc:sqlserver://ADMIN\\SQLEXPRESS:1433;databaseName=QlSach;user=sa; password=123");

			System.out.println("2");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] ts) {

		CoSodao cs = new CoSodao();
		cs.KetNoi();
	}
}
