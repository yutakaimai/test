package com.localhost.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.localhost.ecsite.dao.ConfirmDAO;
import com.opensymphony.xwork2.ActionSupport;


public class ConfirmAction extends ActionSupport implements SessionAware {

	private int itemId;

	private String itemName;

	private String payment;

	private String transport;


	public Map<String,Object> session;


	/**
	 * confirmDAO
	 */
		private ConfirmDAO confirmDAO = new ConfirmDAO();

		/**
		 * 商品購入情報登録
		 *
		 */
		public String execute() throws SQLException {

			String result = SUCCESS;

			/**
			 * confirmDAOの情報受け渡し
			 */

			confirmDAO.buyItemInfo (

					itemId,
					itemName,
					Integer.parseInt(session.get("price").toString()),
					Integer.parseInt(session.get("count").toString()),
					Integer.parseInt(session.get("amount").toString()),
					session.get("userId").toString(),
					session.get("userName").toString(),
					session.get("tel").toString(),
					session.get("address").toString(),
					payment,
					transport
					);

			return result;
		}



	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	/**
	 * 情報の受け取りと設定
	 * @return
	 */
	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}


	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getTransport() {
		return transport;
	}

	public void setTransport(String transport) {
		this.transport = transport;
	}

}