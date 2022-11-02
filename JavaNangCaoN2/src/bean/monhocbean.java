package bean;

public class monhocbean {
	public String mamon;
	public String tenmon;
	public monhocbean(String mamon, String tenmon) {
		super();
		this.mamon = mamon;
		this.tenmon = tenmon;
	}
	public monhocbean() {
		super();
	}
	public String getMamon() {
		return mamon;
	}
	public void setMamon(String mamon) {
		this.mamon = mamon;
	}
	public String getTenmon() {
		return tenmon;
	}
	public void setTenmon(String tenmon) {
		this.tenmon = tenmon;
	}
	
}