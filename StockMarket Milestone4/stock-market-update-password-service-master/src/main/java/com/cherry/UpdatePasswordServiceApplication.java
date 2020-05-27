package com.cherry;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cherry.controller.UserServiceProxy;
import com.cherry.model.User;

@EnableFeignClients
@EnableDiscoveryClient
@RestController
@SpringBootApplication
public class UpdatePasswordServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(UpdatePasswordServiceApplication.class, args);
	}
	
	@RequestMapping(value = "/")
	public String home() {
		return "Eureka Client application";
	}
	
	@Autowired
	UserServiceProxy userService;
	
	@PostMapping("/updatePassword")
	public User updatePassword(@RequestBody User user, HttpServletRequest request) {
		return userService.updatePassword(user);
	}
}
	