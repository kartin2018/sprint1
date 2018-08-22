package ctrl;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Cart;
import entity.Product;
import entity.User;
import service.CartService;

@Controller
public class CartController {
@Autowired
private CartService service;
	@RequestMapping("productdummy.do")
	public String addToCart(@RequestParam("productId") String productId,Map model,HttpSession session) {
		//Product product= (Product) session.get(Product.class, productId);
		User user = (User) session.getAttribute("User");
		Cart cart=user.getCart();
		cart = service.addToCart(cart,productId);
		//Cart cart=service.addToCart(cart, productId);
		System.out.println("product id"+productId);
		model.put("added", "added successfully");
		return "productdummy";
		
}

}
