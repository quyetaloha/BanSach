package banSach.entity;

public class Sach {
	private int maSach;
	private int maLS;
	private String tenSach;
	private String nhaXuatBan;
	private String img;
	private String giaBan;
	private String tacGia;
	private String quocGia;
	private String nguoiBienDich;
	private String kichThuoc;
	private String moTa;
	private String ngayXuatBan;
	
	@Override
	public String toString() {
		return "Sach [maSach=" + maSach + ", maLS=" + maLS + ", tenSach=" + tenSach + ", nhaXuatBan=" + nhaXuatBan
				+ ", img=" + img + ", giaBan=" + giaBan + ", tacGia=" + tacGia + ", quocGia=" + quocGia
				+ ", nguoiBienDich=" + nguoiBienDich + ", kichThuoc=" + kichThuoc + ", moTa=" + moTa + ", ngayXuatBan="
				+ ngayXuatBan + "]";
	}
	public int getMaSach() {
		return maSach;
	}
	public void setMaSach(int maSach) {
		this.maSach = maSach;
	}
	public int getMaLS() {
		return maLS;
	}
	public void setMaLS(int maLS) {
		this.maLS = maLS;
	}
	public String getTenSach() {
		return tenSach;
	}
	public void setTenSach(String tenSach) {
		this.tenSach = tenSach;
	}
	public String getNhaXuatBan() {
		return nhaXuatBan;
	}
	public void setNhaXuatBan(String nhaXuatBan) {
		this.nhaXuatBan = nhaXuatBan;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getGiaBan() {
		return giaBan;
	}
	public void setGiaBan(String giaBan) {
		this.giaBan = giaBan;
	}
	public String getTacGia() {
		return tacGia;
	}
	public void setTacGia(String tacGia) {
		this.tacGia = tacGia;
	}
	public String getQuocGia() {
		return quocGia;
	}
	public void setQuocGia(String quocGia) {
		this.quocGia = quocGia;
	}
	public String getNguoiBienDich() {
		return nguoiBienDich;
	}
	public void setNguoiBienDich(String nguoiBienDich) {
		this.nguoiBienDich = nguoiBienDich;
	}
	public String getKichThuoc() {
		return kichThuoc;
	}
	public void setKichThuoc(String kichThuoc) {
		this.kichThuoc = kichThuoc;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public String getNgayXuatBan() {
		return ngayXuatBan;
	}
	public void setNgayXuatBan(String ngayXuatBan) {
		this.ngayXuatBan = ngayXuatBan;
	}
	
}
