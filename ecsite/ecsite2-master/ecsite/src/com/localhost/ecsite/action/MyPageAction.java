package com.localhost.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.localhost.ecsite.dao.MyPageDAO;
import com.localhost.ecsite.dto.MyPageDTO;
import com.opensymphony.xwork2.ActionSupport;

public class MyPageAction extends ActionSupport implements SessionAware{

	public int item_id ;

	/**
	 * MyPageDAO
	 */
	public MyPageDAO myPageDAO = new MyPageDAO();

	/**
	 * MyPageDTOをArrayList化
	 */
	public ArrayList<MyPageDTO> myPageDTO = new ArrayList<MyPageDTO>();

	/**
	 * セッション
	 */
	public Map<String,Object> session;

	/**
	 * 実行結果
	 */
	String result;

	@SuppressWarnings("unchecked")
	public String execute() throws SQLException {

		/**
		 *
		 * アイテム情報を取得
		 * アイテム情報をitem.japに表示させる
		 *
		 */

		/**
		 * MyPageDTOから情報の引き出し
		 */
		myPageDTO = myPageDAO.getItemInfo();


		Iterator<MyPageDTO> iterator = myPageDTO.iterator();
		List<String> itemIdList = new ArrayList<>();
		while(iterator.hasNext()){
			MyPageDTO myPageDTO = new MyPageDTO();
			myPageDTO = iterator.next();

			itemIdList.add(String.valueOf(myPageDTO.getItemId()));

		System.out.println(myPageDTO.getItemId());

		}

		session.put("myPageDTO", myPageDTO);
		session.put("itemIdList", itemIdList);
		myPageDTO =(ArrayList<MyPageDTO>)session.get("myPageDTO");


		result = SUCCESS;

		return result;


	}


	/**
	 * 情報の受け取りと設定
	 * @return
	 */
	public MyPageDAO getMyPageDAO() {
		return myPageDAO;
	}

	public void setMyPageDAO(MyPageDAO MyPageDAO) {
		this.myPageDAO = MyPageDAO;
	}

	public ArrayList<MyPageDTO> getMyPageDTO() {
		return myPageDTO;
	}

	public void setMyPageDTO(ArrayList<MyPageDTO> myPageDTO) {
		this.myPageDTO = myPageDTO;
	}


	public int getItem_id() {
		return item_id;
	}



	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}

	@Override
	public void setSession(Map<String, Object>session){
		this.session = session;
	}
}


