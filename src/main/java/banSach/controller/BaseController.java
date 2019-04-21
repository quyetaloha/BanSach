package banSach.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.ws.rs.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banSach.entity.Cart;
import banSach.entity.CartItem;
import banSach.entity.HoaDon;
import banSach.entity.KhachHang;
import banSach.entity.Order;
import banSach.entity.Sach;
import banSach.entity.dao.HoaDonDao;
import banSach.entity.dao.KhachHangDao;
import banSach.entity.dao.OrderDao;
import banSach.entity.dao.SachDao;

@Controller
public class BaseController {

	@Autowired
	private SachDao sachDao;

	@Autowired
	private KhachHangDao khachHangDao;

	@Autowired
	private HoaDonDao hoaDonDao;
	
	@Autowired
	private OrderDao orderDao;

	@RequestMapping("/home")
	public String home(Model model) {
		System.out.println("---1---");
		for (Sach sach : sachDao.getAllSach()) {
			System.out.println("---2---");
			System.out.println(sach.toString());
		}
		model.addAttribute("sachs", sachDao.getAllSach());
		return "index";
	}

	@RequestMapping("/cart")
	public String cart(Model model) {

		return "cart";
	}

	@RequestMapping("/viewSach/{maSach}")
	public String viewSach(Model model, @PathVariable("maSach") int maSach) {
		model.addAttribute("sach", sachDao.getSachById(maSach));
		return "viewSach";
	}

	@RequestMapping("/addToCart/{maSach}")
	public String addToCart(Model model, @PathVariable("maSach") int maSach, HttpSession session) {

		if (session.getAttribute("cart") == null) {
			Cart cart = new Cart();
			CartItem cartItem = new CartItem();
			cartItem.setSach(sachDao.getSachById(maSach));
			cartItem.setSoLuong(1);
			List<CartItem> cartItems = new ArrayList<CartItem>();
			cartItems.add(cartItem);
			cart.setCartItems(cartItems);
			session.setAttribute("cart", cart);
		} else {
			Cart cart = (Cart) session.getAttribute("cart");
			List<CartItem> cartItems = cart.getCartItems();
			boolean flag = false;
			for (CartItem cartItem : cartItems) {
				if (cartItem.getSach().getMaSach() == maSach) {
					cartItem.setSoLuong(cartItem.getSoLuong() + 1);
					flag = true;
				}
			}
			if (!flag) {
				CartItem cartItem = new CartItem();
				cartItem.setSach(sachDao.getSachById(maSach));
				cartItem.setSoLuong(1);
				cartItems.add(cartItem);
			}
			session.setAttribute("cart", cart);

		}
		return "redirect:/cart";
	}
	
	
	
	
	@RequestMapping("/giaoHang")
	public String viewSach(Model model, HttpSession session) {
		return "formGiaoHang";
	}

	@RequestMapping(value = "/giaoHang", method = RequestMethod.POST)
	public String viewSach(Model model, HttpSession session, @RequestParam("hoTen") String hoTen,
			@RequestParam("diaChi") String diaChi, @RequestParam("soDienThoai") String soDienThoai,
			@RequestParam("chiNhanh") int chiNhanh) {

		Cart cart2 = (Cart) session.getAttribute("cart");
		for (CartItem cartItem : cart2.getCartItems()) {
			System.out.println(cartItem.getSach().toString());
			System.out.println(cartItem.getSoLuong());
		}

		/*
		 * System.out.println(khachHangDao.getIdMax());
		 * System.out.println(cart2.tongTien());
		 * System.out.println(hoaDonDao.getIdMaxHoaDon());
		 */
		Cart cart = (Cart) session.getAttribute("cart");
		KhachHang khachHang = new KhachHang(hoTen, chiNhanh, soDienThoai, diaChi);
		khachHangDao.insertKhachHang(khachHang);

		System.out.println("them khach hang thanh cong");

		HoaDon hoaDon = new HoaDon();
		hoaDon.setMaKH(khachHangDao.getIdMax());
		hoaDon.setKieuHoaDon("online");
		hoaDon.setTongTien(cart.tongTien());
		hoaDon.setNgayLap(new Date());
		hoaDonDao.insertHoaDon(hoaDon);
		System.out.println("thêm hóa đơn thành công");

		Order order = new Order();
		order.setMahd(hoaDonDao.getIdMaxHoaDon());
		order.setCartItems(cart.getCartItems());
		orderDao.insertOrder(order);
		
		System.out.println("order");
		System.out.println(order.toString());
		System.out.println("them order thanh cong");

		System.out.println(hoTen);
		System.out.println(diaChi);
		System.out.println(soDienThoai);
		System.out.println(chiNhanh);
		
		
		return "confirmation";
	}
	
	@RequestMapping("/danhmuc/{danhMuc}")
	public String viewDanhMuc(Model model, HttpSession session,@PathVariable("danhMuc") int danhMuc) {
		
		if(danhMuc==1) {
			model.addAttribute("tenDanhMuc","Sách văn học nước ngoài");
		}
		if(danhMuc==2) {
			model.addAttribute("tenDanhMuc","Sách thiếu nhi");
		}
		if(danhMuc==3) {
			model.addAttribute("tenDanhMuc","Sách tin học");
		}
		if(danhMuc==4) {
			model.addAttribute("tenDanhMuc","Sách kinh tế");
		}
		if(danhMuc==5) {
			model.addAttribute("tenDanhMuc","Sách blockchain");
		}
		model.addAttribute("sachs", sachDao.getAllSachByDanhMuc(danhMuc));
		return "danhmuc";
	}
	
	@RequestMapping("/timkiem")
	public String timSach(Model model, HttpSession session,@RequestParam("keyWord") String keyWord) {
		
		model.addAttribute("tenDanhMuc","Tìm kiếm");
		model.addAttribute("sachs", sachDao.timSach(keyWord));
		return "danhmuc";
	}
	
	@RequestMapping("/thanhcong")
	public String timSach(Model model, HttpSession session) {
		
		return "confirmation";
	}
}
