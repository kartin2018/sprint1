package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.ProductBean;
import entity.Cart;
import entity.Product;
import repo.CartRepo;
@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartRepo repo;
	@Override
	public Cart addToCart(Cart cart,String productId) {
		return repo.addToCart(cart,productId);
		
	}

	@Override
	public Cart remFromCart(Product product) {
		return null;
	}

}
