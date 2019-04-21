package banSach.entity.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import banSach.entity.Sach;
import banSach.entity.SachMapper;

@Repository
public class SachDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
	public List<Sach> getAllSach(){
		System.out.println("dang o trong sachDao");
		List<Sach> sachs=jdbcTemplate.query("select * from sach", new SachMapper());
		return sachs;
	}
	public Sach getSachById(int maSach) {
		String sql = "SELECT * FROM sach WHERE maSach = ?";
	    return jdbcTemplate.queryForObject(sql, new SachMapper(), maSach);
	}
	
	public List<Sach> getAllSachByDanhMuc(int maLS){
		System.out.println("dang o trong sachDao");
		List<Sach> sachs=jdbcTemplate.query("select * from sach where maLs=?", new SachMapper(),maLS);
		return sachs;
	}
	
	public List<Sach> timSach(String keyWord){
		System.out.println("dang o trong sachDao");
		List<Sach> sachs=jdbcTemplate.query("select * from sach where tenSach like ?", new SachMapper(),"%"+keyWord+"%");
		return sachs;
	}
}
