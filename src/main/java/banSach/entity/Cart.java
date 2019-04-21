package banSach.entity;

import java.util.List;

public class Cart {
	private List<CartItem> cartItems;

	public List<CartItem> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}
	public int tongTien() {
		int tong=0;
		for(CartItem cartItem:cartItems) {
			tong+=cartItem.tinhTien();
		}
		return tong;
	}
}
