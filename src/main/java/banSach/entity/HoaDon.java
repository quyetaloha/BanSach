package banSach.entity;

import java.util.Date;

public class HoaDon {
	private int maHD;
	private int maNV;
	private int maKH;
	private String kieuHoaDon;
	private int tongTien;
	private Date ngayLap;
	public int getMaHD() {
		return maHD;
	}
	public void setMaHD(int maHD) {
		this.maHD = maHD;
	}
	public int getMaNV() {
		return maNV;
	}
	public void setMaNV(int maNV) {
		this.maNV = maNV;
	}
	public int getMaKH() {
		return maKH;
	}
	public void setMaKH(int maKH) {
		this.maKH = maKH;
	}
	public String getKieuHoaDon() {
		return kieuHoaDon;
	}
	public void setKieuHoaDon(String kieuHoaDon) {
		this.kieuHoaDon = kieuHoaDon;
	}
	public int getTongTien() {
		return tongTien;
	}
	public void setTongTien(int tongTien) {
		this.tongTien = tongTien;
	}
	public Date getNgayLap() {
		return ngayLap;
	}
	public void setNgayLap(Date ngayLap) {
		this.ngayLap = ngayLap;
	}
}
