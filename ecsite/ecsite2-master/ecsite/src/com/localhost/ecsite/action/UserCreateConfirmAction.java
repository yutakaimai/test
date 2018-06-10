package com.localhost.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.localhost.ecsite.dao.UserCreateConfirmDAO;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author internous
 *
 */
public class UserCreateConfirmAction extends ActionSupport implements SessionAware {


	/**
	 * ユーザーID
	 */
	private String userId;

	/**
	 * パスワード
	 */
	private String password;

	/**
	 * 苗字
	 */
	private String first_name;

	/**
	 * 名前
	 */
	private String family_name;

	/**
	 * 氏名(苗字と氏名をまとめる)
	 */
	private String userName = first_name + family_name;

	/**
	 * 性別(int)
	 */
	private int gender;

	/**
	 * 性別(String)
	 */
	private String genderStr;

	/**
	 * 郵便番号1
	 */
	private String pc_1;

	/**
	 * 郵便番号2
	 */
	private String pc_2;

	/**
	 * 郵便番号をまとめる
	 */
	private String pc = pc_1 + pc_2;

	/**
	 * 都道府県
	 */
	private String prefecture;
	/**
	 * 市町村区
	 */
	private String city;
	/**
	 * 番地
	 */
	private String banchi;
	/**
	 * 建物名
	 */
	private String building_name;

	/**
	 * 会社名
	 */
	private String company;
	/**
	 * 電話番号1
	 */
	private String tel_1;
	/**
	 * 電話番号2
	 */
	private String tel_2;

	/**
	 * 電話番号3
	 */
	private String tel_3;

	/**
	 * 電話番号　まとめ
	 */
	private String tel;
	/**
	 * 住所まとめ
	 */
	private String address;

	/**
	 * Eメール
	 */
	private String email;

	/**
	 * セッション
	 */
	public Map<String,Object> session;


	/**
	 * 実行結果
	 */
	public String result;

	/**
	 * DAOへの格納
	 *
	 */
	private UserCreateConfirmDAO userCreateConfirmDAO = new UserCreateConfirmDAO();

	/**
	 * 実行メソッド
	 *
	 */

	/**
	 * ユーザー情報登録処理
	 */
	public String execute() throws SQLException {



		userCreateConfirmDAO.UserCreate(
				session.get("userId").toString(),
				session.get("password").toString(),
				session.get("userName").toString(),
				session.get("tel").toString(),
				Integer.parseInt(session.get("gender").toString()),
				session.get("email").toString(),
				session.get("address").toString()
				);

		result = SUCCESS;


		return result ;
	}



	/**
	 * 情報の受け取りと設定
	 * @return
	 */
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public int getGender(){
		return gender;
	}
	public void setGender(int gender){
		this.gender = gender;
	}


	public String getGenderStr() {
		return genderStr;
	}

	public void setGenderStr(String genderStr) {
		this.genderStr = genderStr;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}



	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getFamily_name() {
		return family_name;
	}

	public void setFamily_name(String family_name) {
		this.family_name = family_name;
	}

	public String getPc_1() {
		return pc_1;
	}

	public void setPc_1(String pc_1) {
		this.pc_1 = pc_1;
	}

	public String getPc_2() {
		return pc_2;
	}

	public void setPc_2(String pc_2) {
		this.pc_2 = pc_2;
	}

	public String getPc() {
		return pc;
	}

	public void setPc(String pc) {
		this.pc = pc;
	}

	public String getPrefecture() {
		return prefecture;
	}

	public void setPrefecture(String prefecture) {
		this.prefecture = prefecture;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getBanchi() {
		return banchi;
	}

	public void setBanchi(String banchi) {
		this.banchi = banchi;
	}

	public String getBuilding_name() {
		return building_name;
	}

	public void setBuilding_name(String building_name) {
		this.building_name = building_name;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getTel_1() {
		return tel_1;
	}

	public void setTel_1(String tel_1) {
		this.tel_1 = tel_1;
	}

	public String getTel_2() {
		return tel_2;
	}

	public void setTel_2(String tel_2) {
		this.tel_2 = tel_2;
	}

	public String getTel_3() {
		return tel_3;
	}

	public void setTel_3(String tel_3) {
		this.tel_3 = tel_3;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


}
