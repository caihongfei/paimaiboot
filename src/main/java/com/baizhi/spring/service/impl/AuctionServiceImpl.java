package com.baizhi.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.baizhi.spring.dao.AuctionDao;
import com.baizhi.spring.entity.Auction;
import com.baizhi.spring.service.AuctionService;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AuctionServiceImpl implements AuctionService {
	@Autowired
	private AuctionDao ad;
	public void setAd(AuctionDao ad){
		this.ad = ad;
	}

	@Override
	public void add(Auction auc){
		ad.add(auc);

	}

	@Override
	public void delete(int id){
		ad.delete(id);
	}

	@Override
	public void update(Auction auc){
		ad.update(auc);
	}

	@Override
	public List<Auction> selectAll(Auction auction){
		
		return ad.selectAll(auction);
	}

	@Override
	public Auction selectOne(int id){
		
		return ad.selectOne(id);
	}
	
}
