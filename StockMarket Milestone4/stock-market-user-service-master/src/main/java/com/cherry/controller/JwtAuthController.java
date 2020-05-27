package com.cherry.controller;

import static com.cherry.config.Constants.TOKEN_PREFIX;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cherry.config.JwtTokenUtil;
import com.cherry.model.ApiResponse;
import com.cherry.model.AuthToken;
import com.cherry.model.LoginUser;
import com.cherry.model.User;
import com.cherry.service.UserService;

@RestController
public class JwtAuthController {
	protected final Log logger = LogFactory.getLog(JwtAuthController.class);

	@Autowired
	private AuthenticationManager authenticationManager;
	
	@Autowired
	private JwtTokenUtil jwtTokenUtil;
	
	@Autowired
	private UserService userService;
	
	@PostMapping("/authenticate")
	public ApiResponse<AuthToken> authenticate(@RequestBody LoginUser loginUser) throws AuthenticationException {

		logger.info("=====Enter into authentication========");
		final String username = loginUser.getUsername(); 
        authenticate(username, loginUser.getPassword());
        final User user = userService.findOne(username);
        final String token = jwtTokenUtil.generateToken(user);
        return new ApiResponse<>(200, "success",new AuthToken(username, user.getUserType(), TOKEN_PREFIX + token));
    }

	private void authenticate(String username, String password) {
		authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
		
	}
}
