package com.baizhi.spring.dao;

import java.util.List;
import com.baizhi.spring.entity.Record;

public interface RecordDao {
	
	//��ѯ
	List<Record> select(int id);
	//���
	void add2(Record record);
	
}
