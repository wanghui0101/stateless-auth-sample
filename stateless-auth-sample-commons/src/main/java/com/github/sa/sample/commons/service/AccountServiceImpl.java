package com.github.sa.sample.commons.service;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Service;

import com.github.sa.core.Account;
import com.github.sa.core.service.AccountService;
import com.github.sa.sample.commons.domain.User;

@Service
public class AccountServiceImpl implements AccountService {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public String getHashAlgorithm() {
		return "SHA-1";
	}

	@Override
	public int getHashInterations() {
		return 1024;
	}

	@Override
	public Account findByAccountName(String username) {
		String sql = "select * from t_user t where t.username = ?";
		final User user = new User();
		jdbcTemplate.query(sql, new Object[] {username}, new RowCallbackHandler() {

			@Override
			public void processRow(ResultSet rs) throws SQLException {
				user.setId(rs.getString("id"));
				user.setAccountName(rs.getString("username"));
				user.setName(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				user.setSalt(rs.getString("salt"));
				user.setMobile(rs.getString("mobile"));
			}
			
		});
		return user;
	}

}
