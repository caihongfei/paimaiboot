package com.baizhi.spring.service;

import java.util.List;

import com.baizhi.spring.entity.Record;


public interface RecordService {
	//��
	List<Record> select(int id);
	
	//��
	void add2(Record record);
	
	
}
