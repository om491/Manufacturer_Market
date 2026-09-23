package ccom.nt.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDao {

	@Autowired
	private JdbcTemplate template;

	public boolean adminLogin(String email, String password) {

		Object[] args = { email, password };
		
		String sql = "SELECT COUNT(*) FROM admin WHERE userName = ? AND password = ?";

		int res = template.queryForObject(sql, Integer.class, args);

		if (res > 0) {
			return true;
		} else {
			return false;
		}
	}

}
