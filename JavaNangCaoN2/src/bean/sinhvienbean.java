package bean;

public class sinhvienbean extends monhocbean {
	private String masinhvien;
	private String hoten;
	private String diachi;
	private String email;
	private String anh;
	public sinhvienbean(String masinhvien, String hoten, String diachi, String email, String anh, String mamon) {
		super();
		this.masinhvien = masinhvien;
		this.hoten = hoten;
		this.diachi = diachi;
		this.email = email;
		this.anh = anh;
		this.mamon = mamon;
	}
	public sinhvienbean() {
		super();
	}
	public String getMasinhvien() {
		return masinhvien;
	}
	public void setMasinhvien(String masinhvien) {
		this.masinhvien = masinhvien;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}

}