package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class DaejinpyoVO {
	
	private Long seq_d;
	private Long seq_e;
	private String d_name;
	private String e_name;
	private Long d_level;
	private Long score;
	private String winlose;
	private String skill;
	
}
