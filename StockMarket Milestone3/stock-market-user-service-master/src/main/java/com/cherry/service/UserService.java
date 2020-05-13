package com.cherry.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.cherry.model.User;

public interface UserService extends UserDetailsService{

	User findOne(String userName);

}
