package com.cherry.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cherry.exception.ResourceNotFoundException;
import com.cherry.exception.UserError;
import com.cherry.model.User;
import com.cherry.repository.UserRepository;

@RestController
public class UserController {

	protected final Log logger = LogFactory.getLog(UserController.class);

	@Autowired
	private UserRepository repository;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@GetMapping("/users")
	public List<User> getAllUsers() {
		return repository.findAll();
	}
	
	@PostMapping("/createAdmin")
	public User createAdmin(@Valid @RequestBody User user, HttpServletRequest request) {
		return createUser(user, 0, request);
	}
	
	@PostMapping("/updatePassword")
	public User updatePassword(@RequestBody User user, HttpServletRequest request) {
		return updatePassword(user);
	}
	
	@PostMapping("/signup")
	public User signup(@Valid @RequestBody User user, HttpServletRequest request) {

		return createUser(user, 1, request);
	}

	private User createUser(User user, int userType, HttpServletRequest request) {

		logger.info("=====Enter into createUser=========");
		repository.findByEmail(user.getEmail()).ifPresent(foundUser -> {
			throw new UserError("User", "Please choose a different email");});
		repository.findByUsername(user.getUsername()).ifPresent(foundUser -> {
			throw new UserError("User", "Please choose a different username");});
		//by default the user is deactivated and admin is active
		user.setActive(userType==0);
		user.setUserType(userType);
		String key = bCryptPasswordEncoder.encode(user.getPassword());
		user.setPassword(key);
		User newUser = repository.save(user);
		logger.info("=====createUser successfully=========");
		return newUser;
	}
	
	private User updatePassword(User reqUser) {
		User user = repository.findByUsername(reqUser.getUsername()).orElseThrow(() -> new ResourceNotFoundException("User", "username", reqUser.getUsername()));
		String key = bCryptPasswordEncoder.encode(user.getPassword());
		user.setPassword(key);
		User newUser = repository.save(user);
		return newUser;
	}
}
