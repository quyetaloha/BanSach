package banSach.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class KhachHangMapper implements RowMapper<KhachHang> {

	public KhachHang mapRow(ResultSet rs, int rowNum) throws SQLException {
		KhachHang khachHang=new KhachHang();
		khachHang.setMaKH(rs.getInt(1));
		khachHang.setTenKH(rs.getString(2));
		khachHang.setMaCN(rs.getInt(3));
		khachHang.setSdt(rs.getString(4));
		khachHang.setDiaChi(rs.getString(5));
		return khachHang;
	}

}
