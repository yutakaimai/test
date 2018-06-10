package com.localhost.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.localhost.ecsite.dto.HistoryDTO;
import com.localhost.ecsite.util.DBConnector;

public class HistoryDAO {

	public ArrayList<HistoryDTO> getMyPageInfo(String user_id) throws SQLException {

		 DBConnector dbConnector = new DBConnector();

		 Connection con = dbConnector.getConnection();

		ArrayList<HistoryDTO> historyDTO = new ArrayList<HistoryDTO>();
		String sql = "select * from buy_info where user_id = ? ";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user_id);

			ResultSet rs = ps.executeQuery();

			while(rs.next()) {
				HistoryDTO dto = new HistoryDTO();

				dto.setItemId(rs.getInt("item_id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setAmount(rs.getInt("amount"));
				dto.setCount(rs.getInt("count"));
				dto.setPayment(rs.getString("payment"));
				dto.setInsert_date(rs.getString("insert_date"));

				historyDTO.add(dto);
			}

		} catch(Exception e) {
			e.printStackTrace();

		} finally {
			con.close();
		}

		return historyDTO;
	}


	public int HistoryDelete(List<Integer> historyItemIdList, String user_id) throws SQLException {

		 DBConnector dbConnector = new DBConnector();

		 Connection con = dbConnector.getConnection();


		String sql = "DELETE FROM buy_info where item_id  = ? AND user_id  = ?";

		PreparedStatement ps;
		int result = 0;
		try {
			for(int i = 0; i < historyItemIdList.size(); i++) {
				ps = con.prepareStatement(sql);
				ps.setInt(1, historyItemIdList.get(i));
				ps.setString(2, user_id);

				result = ps.executeUpdate();
			}

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			con.close();
		}

		return result;
	}
}

