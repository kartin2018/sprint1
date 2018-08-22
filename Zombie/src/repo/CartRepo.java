package repo;

import bean.ProductBean;
import entity.Cart;
import entity.Product;

public interface CartRepo {

	public Cart addToCart(Cart cart,String productId);
	
	public Cart remFromCart(Product product);
}
