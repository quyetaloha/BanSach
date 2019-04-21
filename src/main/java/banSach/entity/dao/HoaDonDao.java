package banSach.entity.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import banSach.entity.HoaDon;

@Repository
public class HoaDonDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
	public void insertHoaDon(HoaDon hoaDon) {
		
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		String currentTime = sdf.format(hoaDon.getNgayLap());
		String sql = "INSERT INTO hoadon (makh, kieuhd,ngaylap,tongtien) VALUES (?,?,?,?)";
		jdbcTemplate.update(sql,hoaDon.getMaKH(),hoaDon.getKieuHoaDon(),currentTime,hoaDon.getTongTien());
	}
	
	public Integer getIdMaxHoaDon() {
		String sql = "select mahd from hoadon where mahd=(select MAX(mahd) from hoadon)";
	    return jdbcTemplate.queryForObject(sql, Integer.class);
	}
}
