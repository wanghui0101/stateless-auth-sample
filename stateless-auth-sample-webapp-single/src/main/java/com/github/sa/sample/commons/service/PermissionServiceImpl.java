package com.github.sa.sample.commons.service;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.github.sa.core.service.PermissionAdapter;

@Service
public class PermissionServiceImpl extends PermissionAdapter {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;	
	
	@Override
	public List<String> getRoleNamesByAccountId(String accountId) {
		String sql = "select t2.name from t_user_role_rel t1, t_role t2 where t1.role_id = t2.id and t1.user_id = ?";
		return jdbcTemplate.queryForList(sql, String.class, accountId);
	}
	
	@Override
	public List<String> getPermissionsByRoleNames(List<String> roleNames) {
		String sql = "select t.permission from t_resource t where t.id in (" + 
				"select DISTINCT t2.resource_id from t_role t1, t_role_resource_rel t2 " +  
				"where t1.id = t2.role_id and t1.name in ('" + StringUtils.join(roleNames, "', '") + "') )";
		return jdbcTemplate.queryForList(sql, String.class);
	}
	
}
