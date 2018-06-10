package com.localhost.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author internous
 *
 */
public class UserCreateAction extends ActionSupport implements SessionAware {


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
	 * エラーメッセージ
	 */
	private String errorMassage;




	/**
	 * 実行結果
	 */
	public String result;

	/**
	 * 実行メソッド
	 *
	 */
	public String execute() {
		 pc= pc_1 + pc_2;
		 tel= tel_1 + tel_2 + tel_3;
		 address = pc + prefecture + city + banchi + building_name + company;
		 userName = first_name + family_name;

		/**
		 * 性別はint型へ変換
		 */
		if (gender == 0) {
			genderStr = "男";
		} else {
			genderStr = "女";
		}


//		/**
//		 * 都道府県
//		 */
//		if (prefecture.equals("1") ) {
//			prefecture = "北海道";
//		} else if (prefecture.equals("2")){
//			prefecture = "青森県";
//		} else if (prefecture.equals("3")){
//			prefecture = "岩手県";
//		} else if (prefecture.equals("4")){
//			prefecture = "宮城県";
//		} else if (prefecture.equals("5")){
//			prefecture = "秋田県";
//		} else if (prefecture.equals("6")){
//			prefecture = "山形県";
//		} else if (prefecture.equals("7")){
//			prefecture = "福島県";
//		} else if (prefecture.equals("8")){
//			prefecture = "茨城県";
//		} else if (prefecture.equals("9")){
//			prefecture = "栃木県";
//		} else if (prefecture.equals("10")){
//			prefecture = "群馬県";
//		} else if (prefecture.equals("11")){
//			prefecture = "埼玉県";
//		} else if (prefecture.equals("12")){
//			prefecture = "千葉県";
//		} else if (prefecture.equals("13")){
//			prefecture = "東京都";
//		} else if (prefecture.equals("14")){
//			prefecture = "神奈川県";
//		} else if (prefecture.equals("15")){
//			prefecture = "新潟県";
//		} else if (prefecture.equals("16")){
//			prefecture = "富山県";
//		} else if (prefecture.equals("17")){
//			prefecture = "石川県";
//		} else if (prefecture.equals("18")){
//			prefecture = "福井県";
//		} else if (prefecture.equals("19")){
//			prefecture = "山梨県";
//		} else if (prefecture.equals("20")){
//			prefecture = "長野県";
//		} else if (prefecture.equals("21")){
//			prefecture = "岐阜県";
//		} else if (prefecture.equals("22")){
//			prefecture = "静岡県";
//		} else if (prefecture.equals("23")){
//			prefecture = "愛知県";
//		} else if (prefecture.equals("24")){
//			prefecture = "三重県";
//		} else if (prefecture.equals("25")){
//			prefecture = "滋賀県";
//		} else if (prefecture.equals("26")){
//			prefecture = "京都府";
//		} else if (prefecture.equals("27")){
//			prefecture = "大阪府";
//		} else if (prefecture.equals("28")){
//			prefecture = "兵庫県";
//		} else if (prefecture.equals("29")){
//			prefecture = "奈良県";
//		} else if (prefecture.equals("30")){
//			prefecture = "和歌山県";
//		} else if (prefecture.equals("31")){
//			prefecture = "鳥取県";
//		} else if (prefecture.equals("32")){
//			prefecture = "島根県";
//		} else if (prefecture.equals("33")){
//			prefecture = "岡山県";
//		} else if (prefecture.equals("34")){
//			prefecture = "広島県";
//		} else if (prefecture.equals("35")){
//			prefecture = "山口県";
//		} else if (prefecture.equals("36")){
//			prefecture = "徳島県";
//		} else if (prefecture.equals("37")){
//			prefecture = "香川県";
//		} else if (prefecture.equals("38")){
//			prefecture = "愛媛県";
//		} else if (prefecture.equals("39")){
//			prefecture = "高知県";
//		} else if (prefecture.equals("40")){
//			prefecture = "福岡県";
//		} else if (prefecture.equals("41")){
//			prefecture = "佐賀県";
//		} else if (prefecture.equals("42")){
//			prefecture = "長崎県";
//		} else if (prefecture.equals("43")){
//			prefecture = "熊本県";
//		} else if (prefecture.equals("44")){
//			prefecture = "大分県";
//		} else if (prefecture.equals("45")){
//			prefecture = "宮崎県";
//		} else if (prefecture.equals("46")){
//			prefecture = "鹿児島県";
//		} else if (prefecture.equals("47")){
//			prefecture = "沖縄県";
//		}




		/**
		 * ログイン設定
		 */


		String result = ERROR;
		session.put("user_id", null);



			if(userId.length()<1||userId.length()>8){
				setErrorMassage("ユーザーIDは1文字以上8文字以内で入力してください。");
			}
			if(password.length()<1||password.length()>16){
				setErrorMassage("パスワードは1文字以上16文字以内で入力してください。");
			}

			if(userId.equals("")||userId.matches("^[ 　]+$")){
				setErrorMassage("ユーザーIDを入力してください。");
			}

			if(password.equals("")||password.matches("^[ 　]+$")){
				setErrorMassage("パスワードを入力してください。");
			}
			if(family_name.equals("")||family_name.matches("^[ 　]+$")){
				setErrorMassage("姓を入力してください。");
			}
			if(first_name.equals("")||first_name.matches("^[ 　]+$")){
				setErrorMassage("名を入力してください。");
			}
			if(email.equals("")||email.matches("^[ 　]+$")){
				setErrorMassage("メールアドレスを入力してください。");
			}
			if(family_name.length()<1 || family_name.length()>16){
				setErrorMassage("姓は1文字以上16文字以下で入力してください。");
			}
			if(first_name.length()<1 || first_name.length()>16){
				setErrorMassage("名は1文字以上16文字以下で入力してください。");
			}
			if(email.length()<18 || email.length()>32){
				setErrorMassage("メールアドレスは18文字以上32文字以下で入力してください。");
			}

			if (!password.matches("^[-_.,/@+*;:#$%&A-Za-z0-9]+$")) {
				setErrorMassage("パスワードは半角英数字、半角記号で入力してください。");
			}

			if (!email.matches("^[a-zA-Z0-9#$%&'_`/=~\\*\\+\\-\\?\\^\\{\\|\\}]+(\\.[a-zA-Z0-9!#$%&'_`/=~\\*\\+\\-\\?\\^\\{\\|\\}]+)*+(.*)@[a-zA-Z0-9][a-zA-Z0-9\\-]*(\\.[a-zA-Z0-9\\-]+)+$")) {
				setErrorMassage("正しいメールアドレスの形式で入力してください。");

			}  else if(!(userId.equals("")) && !(password.equals("")) && !(userName.equals(""))&& !(tel.equals(""))&& !(genderStr.equals(""))) {

		result = SUCCESS;

		session.put("userId", userId);
		session.put("password", password);
		session.put("userName", userName);
		session.put("tel", tel);
		session.put("address", address);
		session.put("email", email);
		session.put("gender" , gender);
	}
			return result;
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

	public String getErrorMassage() {
		return errorMassage;
	}

	public void setErrorMassage(String errorMassage) {
		this.errorMassage = errorMassage;
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
