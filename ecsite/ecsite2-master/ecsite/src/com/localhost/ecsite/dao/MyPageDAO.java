package com.localhost.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.localhost.ecsite.dto.MyPageDTO;
import com.localhost.ecsite.util.DBConnector;

public class MyPageDAO {

    public ArrayList<MyPageDTO> getItemInfo() throws SQLException {

    	DBConnector dbConnector = new DBConnector();

        Connection con = dbConnector.getConnection();


    ArrayList<MyPageDTO> myPageDTO = new ArrayList<MyPageDTO>() ;


		String sql = "SELECT * FROM item_info";

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				MyPageDTO dto = new MyPageDTO();

				dto.setItemId(rs.getInt("item_id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItem_description(rs.getString("item_description"));
				dto.setCategory_id(rs.getInt("category_id"));
				dto.setPrice(rs.getInt("price"));
				dto.setImage_file_path(rs.getString("image_file_path"));
				dto.setImage_file_name(rs.getString("image_file_name"));
				dto.setRelease_data(rs.getInt("release_data"));
				dto.setRelease_company(rs.getString("release_company"));


		myPageDTO.add(dto);
			}

		} catch(Exception e) {
			e.printStackTrace();

		} finally {
			con.close();

		}

		return myPageDTO;
	}


    }