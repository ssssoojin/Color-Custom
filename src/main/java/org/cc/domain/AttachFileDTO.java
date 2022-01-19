package org.cc.domain;

import lombok.Data;

@Data
public class AttachFileDTO { // 업로드 이후 반환해야하는 정보
	private String fileName; // 원본 파일 이름
	private String uploadPath; // 업로드된 파일 경로
	private String uuid; // uuid
	private boolean image; // 이미지 파일인가 아닌가
}