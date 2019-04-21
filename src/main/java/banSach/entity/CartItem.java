package banSach.entity;

public class CartItem {
	private Sach sach;
	private int soLuong;
	public Sach getSach() {
		return sach;
	}
	public void setSach(Sach sach) {
		this.sach = sach;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public int tinhTien() {
		return Integer.valueOf(sach.getGiaBan())*soLuong;
	}
}
