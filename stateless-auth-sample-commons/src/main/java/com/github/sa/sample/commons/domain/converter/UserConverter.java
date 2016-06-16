package com.github.sa.sample.commons.domain.converter;

import java.util.Map;

import org.springframework.stereotype.Component;

import com.github.sa.core.Account;
import com.github.sa.core.AccountConverter;
import com.github.sa.sample.commons.domain.User;
import com.google.common.collect.ImmutableMap;

@Component
public class UserConverter implements AccountConverter {

	@Override
	public Map<String, String> toMap(Account account) {
		User user = (User) account;
		return ImmutableMap.<String, String>builder()
				.put(User.ID, user.getId())
				.put(User.ACCOUNT_NAME, user.getAccountName())
				.put(User.NAME, user.getName())
				.put(User.ACCESS_TOKEN, user.getAccessToken())
				.put(User.MOBILE, user.getMobile())
				.build();
	}

	@Override
	public Account fromMap(Map<String, String> map) {
		User user = new User();
		user.setId(map.get(User.ID));
		user.setAccountName(map.get(User.ACCOUNT_NAME));
		user.setName(map.get(User.NAME));
		user.setAccessToken(map.get(User.ACCESS_TOKEN));
		user.setMobile(map.get(User.MOBILE));
		return user;
	}
	
}
