package banSach.entity.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import banSach.entity.CartItem;
import banSach.entity.HoaDon;
import banSach.entity.KhachHang;
import banSach.entity.KhachHangMapper;
import banSach.entity.Order;
import banSach.entity.Sach;
import banSach.entity.SachMapper;

@Repository
public class OrderDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
	public void insertOrder(Order order) {
		System.out.println("---orderdao----");
		System.out.println(order.getMahd());
		for(CartItem cartItem: order.getCartItems()) {
			
			System.out.println(cartItem.getSach().toString());
			String sql = "INSERT INTO OrderItems (maHD, maSach,soLuong) VALUES (?,?,?)";
			jdbcTemplate.update(sql, order.getMahd(),cartItem.getSach().getMaSach(),cartItem.getSoLuong());
		}
	}
}
