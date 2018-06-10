package com.localhost.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.localhost.ecsite.dao.LoginDAO;
import com.localhost.ecsite.dao.UpdatePasswordComplateDAO;
import com.localhost.ecsite.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UpdatePasswordComplateAction extends ActionSupport implements SessionAware {


	/**
	 * 旧パスワード
	 */
	private String password_1;

	/**
	 * 新パスワード
	 */
	private String password_2;

	/**
	 * セッション
	 */
	public Map<String, Object> session;

	/**
	 * エラーメッセージ
	 */
	private String errorMessage = "";

	/**
	 * UpdatePasswordDAOの情報格納
	 */
	private UpdatePasswordComplateDAO updatePasswordComplateDAO = new UpdatePasswordComplateDAO();

	/**
	 * LoginDTOの情報格納
	 */
	private LoginDTO loginDTO = new LoginDTO();

	/**
	 * user_id への情報格納
	 */
	private String user_id = loginDTO.getUserId();


	/**
	 * エラーメッセージの設定
	 */
	public String execute() throws SQLException {

		String result = SUCCESS;
		int count = 0;

		LoginDAO loginDAO = new LoginDAO();
		LoginDTO loginDTO = new LoginDTO();
		loginDTO = loginDAO.userSearch(user_id);


		if (loginDTO.getUserId() == null) {
			setErrorMessage("IDが正しくありません。<br>");
			count++;
		}

		if (!(password_1.equals(password_2))) {

			setErrorMessage(errorMessage + "入力されたパスワードが異なります。<br>");
			count++;
		}

		if (user_id.equals("")) {
			setErrorMessage(errorMessage + "IDを入力してください。<br>");
			count++;
		}

		if (password_1.equals("")) {
			setErrorMessage(errorMessage + "新しいパスワードを入力してください。<br>");
			count++;
		}

		if (password_2.equals("")) {
			setErrorMessage(errorMessage + "確認用のパスワードを入力してください。<br>");
			count++;
		}

		if (password_1.length() > 16) {
			setErrorMessage(errorMessage + "新しいパスワードは「1文字以上16文字以下」で入力してください。<br>");
			count++;
		}

		if (password_2.length() > 16) {
			setErrorMessage(errorMessage + "確認用のパスワードは「1文字以上16文字以下」で入力してください。<br>");
			count++;
		}

		if (password_1.length() < 1) {
			setErrorMessage(errorMessage + "新しいパスワードは「1文字以上16文字以下」で入力してください。<br>");
			count++;
		}

		if (password_2.length() < 1) {
			setErrorMessage(errorMessage + "確認用のパスワードは「1文字以上16文字以下」で入力してください<br>");
			count++;
		}

		if (!(password_1.matches("^[a-zA-Z0-9]+$"))) {
			setErrorMessage(errorMessage + "パスワードは「半角英数字」で入力してください。<br>");
			count++;
		}

		if (!(password_2.matches("^[a-zA-Z0-9]+$"))) {
			setErrorMessage(errorMessage + "パスワードは「半角英数字」で入力してください。<br>");
			count++;
		}

		if (count > 0) {
			result = ERROR;
		} else {
			updatePasswordComplateDAO.createPassword((password_1), (user_id));
		}

		return result;
	}



	/**
	 *　情報の受け取りと設定
	 * @return
	 */

	public String getUser_id() {
		return user_id;
	}

	public void setUserId(String user_id) {
		this.user_id = user_id;
	}

	public String getPassword_1() {
		return password_1;
	}

	public void setPassword_1(String password_1) {
		this.password_1 = password_1;
	}

	public String getPassword_2() {
		return password_2;
	}

	public void setPassword_2(String password_2) {
		this.password_2 = password_2;
	}

	/**
	 * @override
	 */
	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	public String getErrorMessage() {
		return errorMessage;
	}


	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public UpdatePasswordComplateDAO getUpdatePasswordComplateDAO() {
		return updatePasswordComplateDAO;
	}

	public void setUpdatePasswordComplateDAO(UpdatePasswordComplateDAO updatePasswordComplateDAO) {
		this.updatePasswordComplateDAO = updatePasswordComplateDAO;
	}


	public LoginDTO getLoginDTO() {
		return loginDTO;
	}

	public void setLoginDTO(LoginDTO loginDTO) {
		this.loginDTO = loginDTO;
	}


}
