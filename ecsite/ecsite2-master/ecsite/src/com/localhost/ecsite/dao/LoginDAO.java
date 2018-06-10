package com.localhost.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.localhost.ecsite.dto.LoginDTO;
import com.localhost.ecsite.util.DBConnector;

public class LoginDAO {


	private LoginDTO loginDTO = new LoginDTO();

	public LoginDTO getUserInfo(String user_id,String password,String user_name) {

		DBConnector dbConnector = new DBConnector();

		Connection con = dbConnector.getConnection();


		String sql = "SELECT * FROM user_info where user_id = ? AND password = ? AND user_name = ?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, user_id);
			ps.setString(2, password);
			ps.setString(3, user_name);


			ResultSet rs = ps.executeQuery();

			if(rs.next()) {
				loginDTO.setUserId(rs.getString("user_id"));
				loginDTO.setPassword(rs.getString("password"));
				loginDTO.setUserName(rs.getString("user_name"));
				loginDTO.setAddress(rs.getString("address"));
				loginDTO.setTel(rs.getString("tel"));


				if(!(rs.getString("user_id").equals(null))) {
					loginDTO.setLoginFlg(true);
				}
			}

		} catch(Exception e) {
			e.printStackTrace();
		}

		return loginDTO;
	}




	public LoginDTO userSearch (String user_id ){
		LoginDTO loginDTO = new LoginDTO();
    	DBConnector dbConnector = new DBConnector();
    	Connection con = dbConnector.getConnection();


		String sql = "SELECT * FROM user_info where user_id = ? ";

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, user_id);

			ResultSet rs = ps.executeQuery();

			if(rs.next()) {
				loginDTO.setUserId(rs.getString("user_id"));

			}

		} catch(Exception e) {
			e.printStackTrace();
		}

		return loginDTO;
	}


	}

