package com.localhost.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.localhost.ecsite.dao.HistoryDAO;
import com.localhost.ecsite.dto.HistoryDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HistoryAction extends ActionSupport implements SessionAware{

	/**
	 * ログイン情報を格納
	 */
	public Map<String, Object> session;

	/**
	 * マイページ情報取得DAO
	 */
	private HistoryDAO historyDAO = new HistoryDAO();

	/**
	 * マイページ情報格納DTO
	 */
	public ArrayList<HistoryDTO> myPageList = new ArrayList<>();

	/**
	 * 削除フラグ
	 */
	private String deleteFlg;

	private String message;

	/**
	 * 商品履歴を引き出す
	 */
	public String execute() throws SQLException {

		if (!session.containsKey("userId")) {
			return ERROR;
		}

		// 商品履歴を削除しない場合
		if(deleteFlg == null) {
			String user_id = session.get("userId").toString();


			myPageList = historyDAO.getMyPageInfo(user_id);

			List<Integer> historyItemIdList = new ArrayList<>();

			for(int i = 0; i < myPageList.size(); i++) {
				historyItemIdList.add(myPageList.get(i).getItemId());
			}

			session.put("historyItemIdList", historyItemIdList);

		// 商品履歴を削除する場合
		} else if(deleteFlg.equals("1")) {
			delete();
		}

		String result = SUCCESS;
		return result;
	}

	/**
	 * 商品履歴削除
	 */
	public void delete() throws SQLException {

		@SuppressWarnings("unchecked")
		List<Integer> historyItemIdList = (List<Integer>) session.get("historyItemIdList");

		String user_id = session.get("userId").toString();

		int res = historyDAO.HistoryDelete(historyItemIdList, user_id);

		if(res > 0) {
			myPageList = null;
			setMessage("商品情報を正しく削除しました。");
		} else if(res == 0) {
			setMessage("商品情報の削除に失敗しました。");
		}
	}



	public String getDeleteFlg() {
		return deleteFlg;
	}

	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public ArrayList<HistoryDTO> getMyPageList() {
		return myPageList;
	}

	public void setMyPageList(ArrayList<HistoryDTO> myPageList) {
		this.myPageList = myPageList;
	}
}
