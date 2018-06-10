package com.localhost.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.localhost.ecsite.util.DBConnector;

public class UnsubscribeComplateDAO {


	/**
	 * ユーザー情報削除
	 *
	 */
	public int UserInfoDelete(String user_id, String user_name, String password, String address) throws SQLException {

		DBConnector dbConnector = new DBConnector();

		Connection con = dbConnector.getConnection();

		String sql = "DELETE FROM user_info= ?";

		PreparedStatement ps;
		int result =0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, user_name);
			ps.setString(2, user_id);
			ps.setString(3, password);
			ps.setString(4, address);

			result = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			con.close();
		}

		return result;
	}
}


