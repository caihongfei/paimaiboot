package com.baizhi.spring.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.baizhi.spring.dao.RecordDao;
import com.baizhi.spring.entity.Record;
import com.baizhi.spring.service.RecordService;


@Service
public class RecordServiceImpl implements RecordService {
	@Autowired
	private RecordDao rd;
	public void setRd(RecordDao rd) {
		this.rd = rd;
	}

	@Override
	public void add2(Record record) {
		rd.add2(record);
		
	}

	@Override
	public List<Record> select(int id) {
		
		return rd.select(id);
	}

}
