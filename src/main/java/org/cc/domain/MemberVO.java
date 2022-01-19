package org.cc.domain;


import java.util.List;

import lombok.Data;
@Data
public class MemberVO {
	private String userId;
	private String userPwd; 
	private String userName; 
	private String userSex; 
	
	private String userBirth;
	private String userEmail;
	private String userImage;
	
	private List<MemberAttachVO> attachImg;
	
}
