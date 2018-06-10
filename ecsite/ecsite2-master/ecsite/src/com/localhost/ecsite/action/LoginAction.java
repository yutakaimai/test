package com.localhost.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.localhost.ecsite.dao.LoginDAO;
import com.localhost.ecsite.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {
	/**
	 * ユーザーネーム
	 */
	private String userName;
	/**
	 * パスワード
	 */
	private String password;

	/**
	 * 電話番号
	 */
	private String tel;

	/**
	 * ユーザーID
	 */
	private String userId;

	/**
	 * LoginDTOへ情報格納
	 */
	private LoginDTO loginDTO = new LoginDTO();

	/**
	 * LoginDAOから情報を引き出す
	 */
	private LoginDAO loginDAO = new LoginDAO();

	/**
	 * セッション
	 */
	public Map<String, Object> session;



	public String execute() throws  SQLException {


	String result = ERROR;
//
//	//強制ログイン中
//	result = SUCCESS;
//	userId = "1111";
//	password = "1111";
//	userName = "てすとてすと";
//	tel = "1111111111";
//	loginDTO.setUserId(userId);
//	loginDTO.setUserName(userName);
//	loginDTO.setPassword(password);
//	loginDTO.setTel(tel);
//	session.put("userId", "1111");
//	session.put("userName", "てすとてすと");
//	session.put("address", "11111111testest");
//	session.put("tel", "1111111111");

	// ログイン実行


			loginDTO = loginDAO.getUserInfo( userId, password, userName );

			if(userId.equals(loginDTO.getUserId())){
				if(password.equals(loginDTO.getPassword())){
					if(userName.equals(loginDTO.getUserName())){

						// ユーザー情報を取得

						session.put("userId", loginDTO.getUserId());
						session.put("userName", loginDTO.getUserName());
						session.put("address", loginDTO.getAddress());
						session.put("tel", loginDTO.getTel());


				result = SUCCESS;
					}
				}
			}
			return result;
			}




	@Override
	public void setSession(Map<String, Object> session) {

		this.session = session;

	}

	/**
	 * 情報の受け取りと設定
	 *
	 */

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}




}
