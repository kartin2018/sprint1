package service;

import java.util.Base64;
import java.util.Base64.Encoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.ForgetBean;
import bean.LoginBean;
import entity.User;
import repo.UserRepo;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserRepo repo;

	@Override
	public User authenticate(LoginBean login) {
		// Password encoding
		Encoder encoder = Base64.getEncoder();
		String encoded = encoder.encodeToString(login.getPassword().getBytes());
		login.setPassword(encoded);
		return repo.authenticate(login);
	}

	@Override
	public boolean validate(ForgetBean forget) {
		// Movie encoding
		return repo.validate(forget);
	}

	@Override
	public boolean changePassword(LoginBean change) {
		// Password encoding
		Encoder encoder = Base64.getEncoder();
		change.setPassword(encoder.encodeToString(change.getPassword().getBytes()));
		return repo.changePassword(change);
	}

	@Override
	public boolean persist(User user) {
		// Password encoding
		Encoder encoder = Base64.getEncoder();
		user.setPassword(encoder.encodeToString(user.getPassword().getBytes()));
		return repo.persist(user);
	}
}
