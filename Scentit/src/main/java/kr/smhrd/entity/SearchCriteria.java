package kr.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SearchCriteria {
	// Criteria --> 기준을 정해주는 자료형
	// 단순한 필드만 존재하기보다는 알고리즘적인 메소드를 가지고 있음
	// -> pageCriteria : 페이징 기법
	
	// 검색 기준을 잡아주는 자료형
	private String type;
	private String content;

}
