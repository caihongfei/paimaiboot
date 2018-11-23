package com.baizhi.spring.entity;



import com.alibaba.fastjson.annotation.JSONField;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
									//¾ºÅÄ¼ÇÂ¼
public class Record implements Serializable {
	private int id;					//¾ºÅÄ¼ÇÂ¼±àºÅ
	private int user_id;			//¾ºÅÄÕß±àºÅ
	private int auction_id;			//ÅÄÂôÆ·±àºÅ
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@JSONField(format = "yyyy-MM-dd HH:mm:ss")
	private Date auction_time;		//¾º¼ÛÊ±¼ä
	private double auction_price;	//¾ºÅÄ¼Û¸ñ
	private User user;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getAuction_id() {
		return auction_id;
	}
	public void setAuction_id(int auction_id) {
		this.auction_id = auction_id;
	}
	public Date getAuction_time() {
		return auction_time;
	}
	public void setAuction_time(Date auction_time) {
		this.auction_time = auction_time;
	}
	public double getAuction_price() {
		return auction_price;
	}
	public void setAuction_price(double auction_price) {
		this.auction_price = auction_price;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Record() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Record(int id, int user_id, int auction_id, Date auction_time,
			double auction_price) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.auction_id = auction_id;
		this.auction_time = auction_time;
		this.auction_price = auction_price;
	}
	public Record(int user_id, int auction_id, Date auction_time,
			double auction_price) {
		super();
		this.user_id = user_id;
		this.auction_id = auction_id;
		this.auction_time = auction_time;
		this.auction_price = auction_price;
	}
	@Override
	public String toString() {
		return "Record [id=" + id + ", user_id=" + user_id + ", auction_id="
				+ auction_id + ", auction_time=" + auction_time
				+ ", auction_price=" + auction_price + ", user=" + user + "]";
	}
	
}
