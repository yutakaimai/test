package com.localhost.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.localhost.ecsite.util.DBConnector;

public class UpdatePasswordComplateDAO {


	private String sql = "UPDATE user_info SET password  = ? WHERE user_id  =?";

	public void createPassword(String password, String user_id) throws SQLException {

		 DBConnector dbConnector = new DBConnector();

		 Connection con = dbConnector.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, password);
			ps.setString(2, user_id);
			ps.execute();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
	}

}