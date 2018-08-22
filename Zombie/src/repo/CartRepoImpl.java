package repo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entity.Cart;
import entity.Product;
import entity.User;
//import kartin.util.HibernateUtil;
@Repository
public class CartRepoImpl implements CartRepo {

	@Autowired
	private SessionFactory factory;
	@Override
	public Cart addToCart(Cart cart,String productId) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		Product product= (Product) session.get(Product.class, productId);
		product.setCart(cart);
		session.save(product);
		txn.commit();
		return cart;
	}

	@Override
	public Cart remFromCart(Product product) {
		// TODO Auto-generated method stub
		return null;
	}

}
