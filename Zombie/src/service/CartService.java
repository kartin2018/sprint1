package service;

import bean.ProductBean;
import entity.Cart;
import entity.Product;

public interface CartService {

	public Cart addToCart(Cart cart,String productId);
	
	public Cart remFromCart(Product product);
}
