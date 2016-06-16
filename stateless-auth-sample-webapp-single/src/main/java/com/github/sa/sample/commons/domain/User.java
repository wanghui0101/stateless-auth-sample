package com.github.sa.sample.commons.domain;

import com.github.sa.core.Account;

public class User implements Account {
	
	private static final long serialVersionUID = 7238087328474697501L;
	
	public static final String MOBILE = "mobile";
	
	private String id;
	private String username;
	private String name;
	private String password;
	private String salt;
	private String accessToken;
	
	private String mobile;
	
	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String getId() {
		return this.id;
	}
	
	public void setAccountName(String username) {
		this.username = username;
	}

	@Override
	public String getAccountName() {
		return this.username;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String getName() {
		return this.name;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String getPassword() {
		return this.password;
	}
	
	public void setSalt(String salt) {
		this.salt = salt;
	}

	@Override
	public String getSalt() {
		return this.salt;
	}

	@Override
	public void setAccessToken(String accessToken) {
		this.accessToken = accessToken;
	}

	@Override
	public String getAccessToken() {
		return this.accessToken;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
}
