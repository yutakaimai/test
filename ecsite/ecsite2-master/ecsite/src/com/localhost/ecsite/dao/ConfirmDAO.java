package com.localhost.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.localhost.ecsite.util.DBConnector;
import com.localhost.ecsite.util.DateUtil;

public class ConfirmDAO  {


	private DateUtil dateUtil = new DateUtil();

		 String sql = "INSERT INTO buy_info (item_id, item_name, price, count, amount, user_id, user_name, tel, address,  payment, transport, insert_date) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		 DBConnector dbConnector = new DBConnector();

		 Connection con = dbConnector.getConnection();

			/**
			 *  商品購入情報登録
			 *
			 */
			public void buyItemInfo (int item_id,
									String item_name,
									int price,
									int count,
									int amount,
									String user_id,
									String user_name,
									String tel,
									String address,
									String payment,
									String transport) throws SQLException {

				try {
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setInt(1, item_id);
					ps.setString(2, item_name);
					ps.setInt(3, price);
					ps.setInt(4, count);
					ps.setInt(5, amount);
					ps.setString(6, user_id);
					ps.setString(7, user_name);
					ps.setString(8, tel);
					ps.setString(9, address);
					ps.setString(10, payment);
					ps.setString(11, transport);
					ps.setString(12, dateUtil.getDate());

					ps.execute();
			} catch(Exception e){
				   e.printStackTrace();
			}finally {
				con.close();
			}
			}
	}

