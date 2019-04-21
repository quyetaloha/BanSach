package banSach.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class SachMapper implements RowMapper<Sach> {

	public Sach mapRow(ResultSet rs, int rowNum) throws SQLException {
		Sach sach=new Sach();
		sach.setMaSach(rs.getInt(1));
		sach.setMaLS(rs.getInt(2));
		sach.setTenSach(rs.getString(3));
		sach.setNhaXuatBan(rs.getString(4));
		sach.setImg(rs.getString(5));
		sach.setGiaBan(rs.getString(6));
		sach.setTacGia(rs.getString(7));
		sach.setQuocGia(rs.getString(8));
		sach.setNguoiBienDich(rs.getString(9));
		sach.setKichThuoc(rs.getString(10));
		sach.setMoTa(rs.getString(11));
		sach.setNgayXuatBan(rs.getString(12));
		return sach;
	}

}
