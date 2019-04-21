package banSach.entity;

import java.util.List;

public class Order {
	private int mahd;
	private List<CartItem> cartItems;
	public int getMahd() {
		return mahd;
	}
	public void setMahd(int mahd) {
		this.mahd = mahd;
	}
	public List<CartItem> getCartItems() {
		return cartItems;
	}
	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}
	@Override
	public String toString() {
		return "Order [mahd=" + mahd + ", cartItems=" + cartItems + "]";
	}
}
