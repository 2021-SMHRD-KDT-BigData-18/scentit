package kr.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CastCount {
	
	// 이름 - 횟수를 묶는 나만의 자료형
	private String name;
	private int count;

}
