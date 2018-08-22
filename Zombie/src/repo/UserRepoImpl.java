package repo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bean.ForgetBean;
import bean.LoginBean;
import entity.Cart;
import entity.User;

@Repository
public class UserRepoImpl implements UserRepo {
	@Autowired
	private SessionFactory factory;
	static int count=11;
	
	@Override
	public User authenticate(LoginBean login) {
		Session session = factory.openSession();
		User user = (User) session.get(User.class, login.getEmail());
		if(user != null && user.getPassword().equals(login.getPassword()))
			return user;
		else
			return null;
	}

	@Override
	public boolean validate(ForgetBean forget) {
		Session session = factory.openSession();
		User user = (User) session.get(User.class, forget.getEmail());
		
		if(user != null && user.getEmail().equals(forget.getEmail())) {
		forget.setContact(user.getContact());
			
			return true;
			}
		
		else
			return false;
	}

	@Override
	public boolean changePassword(LoginBean change) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			User user = (User) session.get(User.class, change.getEmail());
			user.setPassword(change.getPassword());
			txn.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}
	}

	@Override
	public boolean persist(User user) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		
		try {
			Cart cart=new Cart();
			cart.setCartId("C0"+Integer.toString(count++));
			user.setCart(cart);
			cart.setUser(user);
			session.save(user);
			session.save(cart);
			txn.commit();
			System.out.println("Cart and user saved");
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}
	}
}
