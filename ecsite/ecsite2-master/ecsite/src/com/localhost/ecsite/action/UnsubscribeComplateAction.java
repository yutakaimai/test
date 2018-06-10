package com.localhost.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.localhost.ecsite.dao.UnsubscribeComplateDAO;
import com.localhost.ecsite.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UnsubscribeComplateAction extends ActionSupport implements SessionAware {


		/**
		 * LoginDTOの情報格納
		 */
		LoginDTO loginDTO = new LoginDTO();

		/**
		 * セッション情報
		 */
		private Map<String, Object> session;

		/**
		 * 削除フラグ
		 */
		private String deleteFlg;

		/**
		 * UnsubscribeComplateDAOのインスタンス化
		 */

		UnsubscribeComplateDAO unsubscribeComplateDAO = new UnsubscribeComplateDAO();

		/**
		 * result 格納
		 */
		String result;

			/**
			 * ユーザー情報削除
			 */

		public String execute() throws SQLException {


			if(deleteFlg.equals("1")) {

				delete();
			}
			 String result = SUCCESS;
			return result;
		}


		public void delete() throws SQLException {

			result = SUCCESS;

			String user_id = session.get("userId").toString();
			String user_name = session.get("userName").toString();
			String address = session.get("address").toString();
			String password = loginDTO.getPassword();


			int res = unsubscribeComplateDAO.UserInfoDelete(user_id, user_name, password, address);

			if(res > 0) {
				loginDTO = null;

			}


		}

		/**
		 * 情報の受け取りと設定
		 * @return
		 */
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

		}


