package kr.smhrd.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.entity.BroadCast;
import kr.smhrd.entity.CastCount;
import kr.smhrd.entity.SearchCriteria;
import kr.smhrd.mapper.BroadCastMapper;

@RestController // @Controller + @ResponseBody
public class BroadCastRESTController {
	// -> 비동기통신 요청을 처리하는 controller
	// -> 웹페이지 화면에 데이터를 돌려주는 역할
	// -> 메소드를 선언할 때 @ResponseBody 생략이 가능하다!
	
	@Autowired
	private BroadCastMapper mapper;
	
	// 월별 데이터 조회할 수 있는 url
	// 페이지 전환이 안 되는 메소드
	@RequestMapping("/getMonthData")
	public ArrayList<BroadCast> getMonthData(String program_nm) {
		
		//System.out.println("요청이 들어옴");
		
		ArrayList<BroadCast> result = mapper.getMonthData(program_nm);
		     
		
		return result;
	}
	
	// 연령대별 시청률 조회하는 메소드
	@RequestMapping("/getAgeData")
	public BroadCast getAgeData(String program_nm) {
		
		BroadCast result2 = mapper.getAgeData(program_nm);
		
		return result2;
	}
	
	// 출연진 TOP5 조회하는 메소드
	@RequestMapping("/getCastCount")
	public ArrayList<CastCount> getCastCount(String program_nm) {
		
		// 1. db에서 데이터 조회
		ArrayList<BroadCast> result3 = mapper.getCastCount(program_nm);
		
		// 2. 조회한 결과값 화면에 출력될 수 있는 형태로 변환(전처리)
		// 1개의 column안에 여러명의 이름이 들어있음
		
		// 연예인 이름을 전부 담을 수 있는 ArrayList<String> 생성
		ArrayList<String> cast_nm = new ArrayList<String>();
		
		for (BroadCast b : result3) {
			// 2-1) result안의 MC이름을 가져와서 , 를 기준으로 쪼개기
			String[] temp1 = b.getFixing_cast_nm().split(",");
			// 2-2) result3에 들어있는 cast_nm을 가져와서 , 를 기준으로 쪼개기
			String[] temp2 = b.getCast_nm().split(",");
			// 2-3) 쪼갠 데이터들을 하나의 공간에 보관하기
			for (String s : temp1) {
				cast_nm.add(s);
			}
			
			for (String s : temp2) {
				cast_nm.add(s);
			}
		}
		 System.out.println("연예인 명단 >> " + cast_nm);
		 
		 // 2-4) 전체 연예인 명단에서 중복을 제거
		 // Collection --> 객체 자료구조들 (ArrayList, List, HashMap, ...)
		 // HashSet --> 중복값을 허용하지 않는 자료구조 : 데이터를 꺼내려면 iterator 사용해야함
		 // LinkedHashSet --> 순서가 있는 중복값을 허용하지 않는 자료구조 (HashMap을 상속받고 있음) : Value만 있음
		 // 중복제거 하고 싶을 때 new LinkedHashSet<String>(); -> 소괄호 안에 중복 제거할 거 넣어주기
		 LinkedHashSet<String> castingHashSet = new LinkedHashSet<String>(cast_nm);
		 
		 System.out.println("중복 제거한 결과값 >> "+ castingHashSet);
		 
		 // 2-5) 최종적으로 리턴해줄 자료형
		 // CastCount --> 이름 : 횟수
		 ArrayList<CastCount> resultList = new ArrayList<CastCount>();
		 
		 for (String name : castingHashSet) {
			 if(!name.equals("")) {
				 // 2-6) 연예인 이름 당 몇 번 등장했는지 횟수를 카운트
				 int count = Collections.frequency(cast_nm, name);
				 // 2-7) 결과값을 resultList에 담아주기
				 // resultList.add(new CastCount("수빈", count));
				 resultList.add(new CastCount(name, count));
			 }
		 }
		 
		 // 2-8) resultList 정렬
		 // --> 객체를 정렬 --> count 기준으로 정렬
		 // 객체를 정렬하는 방법
		 // (1) 정렬하고 싶은 객체가 Comparable 인터페이스 상속
		 // (2) Comparator라는 인터페이스를 구현 ★사용★
//		 Collections.sort(resultList, new Comparator<CastCount>() {
//			// compare --> 비교하는 함수
//			@Override
//			public int compare(CastCount o1, CastCount o2) {
//				return o2.getCount() - o1.getCount();
//				// return 타입에 의해 정렬이 된다
//				// 음수 -> 오름차순 정렬
//				// 양수 -> 내림차순 정렬
//			}
//		});
		 
		 // 위에 있는 식을 람다식으로 표현하기
		 // 람다식 표현 --> 익명함수를 호출할 때 많이 사용하는 방식, 반드시 한 줄로 작성해야 함, 익명함수가 1개일 때만
		 // (매개변수) -> 리턴해줘야하는 결과값
		 Collections.sort(resultList, (o1, o2) -> o2.getCount() - o1.getCount());
		 
		 System.out.println("최종결과 >> "+ resultList);

		return resultList;
	}
	
	
}
