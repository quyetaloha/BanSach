package banSach.entity.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import banSach.entity.KhachHang;
import banSach.entity.KhachHangMapper;
import banSach.entity.Sach;
import banSach.entity.SachMapper;

@Repository
public class KhachHangDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
	public void insertKhachHang(KhachHang khachHang) {
		String sql = "INSERT INTO khachhang (makh,tenkhachhang, macn,sdt,diachi) VALUES (?,?, ?,?,?)";
		jdbcTemplate.update(sql,getIdMax()+1,khachHang.getTenKH(),khachHang.getMaCN(),khachHang.getSdt(),khachHang.getDiaChi());
	}
	
	public Integer getIdMax() {
		String sql = "select makh from khachhang where makh=(select MAX(makh) from KhachHang)";
	    return jdbcTemplate.queryForObject(sql, Integer.class);
	}
}
