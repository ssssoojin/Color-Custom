package org.cc.domain;

import lombok.Data;

@Data
public class feedVO {
	private int feedNo;
	private String title;
	private String description;
	private String imgTop;
	private String imgBottom;
	private String imgAccCustom;
	private String imgAccReal;
	private String color;
	private String size;
	private String regDate;
	private String updateDate;
	private String userId;
	private int hit;
}
