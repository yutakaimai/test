package com.localhost.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;


public class ItemAction extends ActionSupport implements SessionAware {

	/**
	 * アイテムID
	 */
	private int itemId;

	/**
	 * 購入個数
	 */
	private int count;

	/**
	 * 商品金額
	 */
	private int price;

	/**
	 * 合計金額
	 */
	private int amount;

    /**
     * 支払い方法
     */
	private String payment;

	/**
	 * 商品名
	 */
	private String itemName;

	/**
	 * 配送方法
	 */
	private String transport;

	/**
	 * 配送先お客様情報
	 */
	private Map<String,Object> session;



		public String execute(){

        	String result =SUCCESS;



        	if(session.get("userName") !=null){
        	session.get("userName").toString();
        	session.get("address").toString();


        	}
        	/**
        	 * 商品の合計金額の計算
        	 */
        	session.put("count", count);
        	session.put("price", price);
        	int intCount = Integer.parseInt(session.get("count").toString());
        	int intPrice = Integer.parseInt(session.get("price").toString());

        	session.put("amount", intCount * intPrice +420);


        	/**
        	 * 支払方法の場合分け
        	 */

        	if(payment.equals("1")) {
        		payment = "クレジットカード";

        	} else if(payment.equals("2")) {
        		payment = "コンビニ払い・電子マネー";

        	} else if(payment.equals("3")) {
        		payment = "代引き";

        	} else if(payment.equals("4")) {
        		payment = "現金";
        	}

        	/**
        	 * 配送方法の場合分け
        	 */

        	if(transport.equals("1")) {
        		transport = "通常配送";


        	} else if(transport.equals("2")) {
        		transport = "配達日指定";


        	} else if(transport.equals("3")) {
        		transport = "お急ぎ便";

        	} else if(transport.equals("4")) {
        		transport = "冷凍クール便";
        	}

	      return result;
	}



		/**
		 * 情報の受け取りと設定
		 */

		public String getPayment(){
			return payment;
		}
		public void setPayment(String payment){
			this.payment =payment;
		}

		public String getTransport(){
			return transport;
		}
		public void setTransport(String transport){
			this.transport = transport;
		}


		public int getPrice() {
			return price;
		}


		public void setPrice(int price) {
			this.price = price;
		}


		public void setSession(Map<String,Object> session) {
			this.session = session;
		}


		public int getCount() {
			return count;
		}


		public void setCount(int count) {
			this.count = count;
		}


		public int getItemId() {
			return itemId;
		}

		public void setItemId(int itemId) {
			this.itemId = itemId;
		}



		public int getAmount() {
			return amount;
		}


		public void setAmount(int amount) {
			this.amount = amount;
		}


		public String getItemName() {
			return itemName;
		}


		public void setItemName(String itemName) {
			this.itemName = itemName;
		}



}