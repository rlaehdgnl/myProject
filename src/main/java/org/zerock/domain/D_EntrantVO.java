package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class D_EntrantVO {
	
	private Long seq_d;
	private Long seq_e;
	
	private String e_name;
	private String skill;
	private Date entrantDate;
	private Date updateDate;
}
