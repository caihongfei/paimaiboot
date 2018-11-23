package com.baizhi.spring.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baizhi.spring.entity.Auction;
import com.baizhi.spring.service.AuctionService;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class AuctioController{
	@Autowired
	private AuctionService ad;

	@RequestMapping("/add")
	public String add(Auction auc, MultipartFile images, HttpServletRequest request) throws IllegalStateException, IOException{
		//获取原文件名
		String fileName=images.getOriginalFilename();
		
		auc.setAuction_pic(fileName);
		
		images.transferTo(new File("D:\\Boot\\paimaiboot\\src\\main\\webapp\\images"+fileName));
		
		System.out.println("--------------------------");
		
		ad.add(auc);
		return "redirect:/selectAll.do";
		
	}
	
	@RequestMapping("/delete")
	public String  delete(int id){
		System.out.println(id);
		ad.delete(id);
		return "redirect:/selectAll.do";
	}
	
	@RequestMapping("/update")
	public String  update(Auction auc,MultipartFile images,HttpServletRequest request) throws Exception{
		if(!"".equals(images.getOriginalFilename())){
			String real = request.getRealPath("/images");
			String newFileName= images.getOriginalFilename();
		    images.transferTo(new File(real+"/"+newFileName));
		    auc.setAuction_pic(newFileName);
		}
		ad.update(auc);
		return "redirect:/selectAll.do";
	}
	
	@RequestMapping("/selectAll")
	public String  selectAll(Auction auction,Map map){
		List<Auction> list = ad.selectAll(auction);
		map.put("list",list);
		map.put("auc",auction);
		return "private/show";
	}
	
	@RequestMapping("/selectOne")
	public String  selectOne(int id,HttpServletRequest request){
		System.out.println("查询一条");
		request.setAttribute("auctions",ad.selectOne(id));
		
		return "private/update";
	}
	
	@RequestMapping("/getOne")
	public String  getOne(int id,HttpServletRequest request){
		request.setAttribute("auctions",ad.selectOne(id));
		return "private/auction";
	}
	
	public AuctionService getAd() {
		return ad;
	}

	public void setAd(AuctionService ad) {
		this.ad = ad;
	}
}
