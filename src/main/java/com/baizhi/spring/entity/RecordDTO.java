package com.baizhi.spring.entity;

import java.util.List;

public class RecordDTO {
	
	private  List<Record> record;

	public List<Record> getRecord() {
		return record;
	}

	public RecordDTO(List<Record> record) {
		super();
		this.record = record;
	}

	public RecordDTO() {
		super();
	}

	@Override
	public String toString() {
		return "RecordDTO [record=" + record + "]";
	}

	public void setRecord(List<Record> record) {
		this.record = record;
	}
	
	

}
