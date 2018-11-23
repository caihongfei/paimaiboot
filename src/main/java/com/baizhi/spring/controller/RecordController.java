package com.baizhi.spring.controller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.baizhi.spring.entity.Auction;
import com.baizhi.spring.entity.Record;
import com.baizhi.spring.service.AuctionService;
import com.baizhi.spring.service.RecordService;

@Controller
public class RecordController {
	@Autowired
	private RecordService rsd;
	@Autowired
	private AuctionService auc;

	@RequestMapping("/add2")
	public String add2(int id, Record record){
		rsd.add2(record);
		System.out.println("ÃÌº”ÕÍ≥…-====" + id);
		return "forward:/select.do?id=" + id;
	}

	@RequestMapping("/select")
	public String select(int id, Map map) {
		List<Record> list = rsd.select(id);
		Auction aaa = auc.selectOne(id);
		map.put("recordList", list);
		map.put("auction", aaa);
		return "/private/auction";
	}

	public AuctionService getAuc() {
		return auc;
	}

	public void setAuc(AuctionService auc) {
		this.auc = auc;
	}

	public RecordService getRsd() {
		return rsd;
	}

	public void setRsd(RecordService rsd) {
		this.rsd = rsd;
	}
}
