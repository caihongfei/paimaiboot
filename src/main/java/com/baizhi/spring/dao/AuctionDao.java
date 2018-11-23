package com.baizhi.spring.dao;

import java.util.List;
import com.baizhi.spring.entity.Auction;

public interface AuctionDao {
	//添加
	void add(Auction auc);
	//删除
	void delete(int id);
	//改
	void update(Auction auc);
	//全部
	List<Auction> selectAll(Auction auction);
	//一个
	Auction selectOne(int id);
}
