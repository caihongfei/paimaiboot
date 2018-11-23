package com.baizhi.spring.service;

import java.util.List;
import com.baizhi.spring.entity.Auction;

public interface AuctionService {
	//添加
	void add(Auction auc);
	//删除
	void delete(int id);
	//修改
	void update(Auction auc);
	//全部
	List<Auction> selectAll(Auction auction);
	//一个
	Auction selectOne(int id);
}
