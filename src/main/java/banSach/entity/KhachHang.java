package banSach.entity;


public class KhachHang {
	private int maKH;
	private String tenKH;
	private int maCN;
	private String sdt;
	private String diaChi;
	
	public KhachHang() {
	}
	public KhachHang(String tenKH, int maCN, String sdt, String diaChi) {
		super();
		this.tenKH = tenKH;
		this.maCN = maCN;
		this.sdt = sdt;
		this.diaChi = diaChi;
	}
	public int getMaKH() {
		return maKH;
	}
	public void setMaKH(int maKH) {
		this.maKH = maKH;
	}
	public String getTenKH() {
		return tenKH;
	}
	public void setTenKH(String tenKH) {
		this.tenKH = tenKH;
	}
	public int getMaCN() {
		return maCN;
	}
	public void setMaCN(int maCN) {
		this.maCN = maCN;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
}
