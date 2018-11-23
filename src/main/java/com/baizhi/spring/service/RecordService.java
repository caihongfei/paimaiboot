package com.baizhi.spring.service;

import java.util.List;

import com.baizhi.spring.entity.Record;


public interface RecordService {
	//²é
	List<Record> select(int id);
	
	//Ôö
	void add2(Record record);
	
	
}
