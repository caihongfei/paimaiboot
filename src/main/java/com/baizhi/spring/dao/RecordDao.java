package com.baizhi.spring.dao;

import java.util.List;
import com.baizhi.spring.entity.Record;

public interface RecordDao {
	
	//≤È—Ø
	List<Record> select(int id);
	//ÃÌº”
	void add2(Record record);
	
}
