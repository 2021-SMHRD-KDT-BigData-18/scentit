package kr.smhrd.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.entity.BroadCast;
import kr.smhrd.entity.SearchCriteria;
import kr.smhrd.mapper.BroadCastMapper;


@Controller // 1) class파일이 Controller(POJO)임을 알려주기
public class BroadCastController {
	// -> 동기통신 요청만 처리하는 controller
	
	// Mapper 인터페이스 사용할 수 있게끔 연결
	@Autowired
	private BroadCastMapper mapper;
	
	// 남/여/전체 시청률 평균을 조회하는 기능
	@RequestMapping("/") // 2) url mapping을 "/"로 들어왔을 때 잡아주기
	public String index(SearchCriteria cri, Model model) {
		
		System.out.println("기준 >> "+ cri);
		
		// db에서 데이터 조회하기
		BroadCast vo = mapper.getRating(cri);
		// 서로 다른 클래스 파일 간의 값을 주고 받을 수 있는 방법
		// --> 메소드의 매개변수
		// --> 메소드의 리턴
		
		// 데이터를 model에 담아서 index.jsp로 보내주기
		model.addAttribute("vo", vo);
		
		return "index"; 
		// 3) "/"로 들어왔을 때 index.jsp 페이지를 forward방식으로 되돌려주기
	}
	
	// 출연진 관리 누르면 register.jsp로 보내주기
	@RequestMapping("/register")
	public String register() {
		
		return "register";
	}
	
	// name값은 동일한데 value가 여러개 들어가있을 경우
	// Spring 수집하는 방법
	// ex) name = "이름" value = "김운비"
	//	   name = "이름" value = "김은영"
	//	   name = "이름" value = "임경남"
	// --> String으로 수집할거야
	// String s = "김운비, 김은영, 임경남"
	
	
	
//     비동기통신 요청 처리하는 controller로 따로 만들어서 옮기기	
//	// 월별 데이터 조회할 수 있는 url
//	// 페이지 전환이 안 되는 메소드
//	@RequestMapping("/getMonthData")
//	public @ResponseBody ArrayList<BroadCast> getMonthData() {
//		// @ResponseBody -> 비동기통신으로 요청이 들어왔을 때
//		//				 -> 반환하는 결과값이 페이지 이동이 아니라
//		//				 -> 웹 화면에 출력해야하는 결과값임을 나타내는 annotation
//		
//		// ajax(비동기) 요청이 들어왔을 때, 결과값을 반환하려면 웹페이지 화면에 출력
//		// 비동기 통신은 요청이 일어나고 나서 페이지는 바뀌지 않음
//		
//		System.out.println("요청이 들어옴");
//		
//		// 1. db에서 월별 전체시청률 평균 조회해오기
//		// db --> mapper interface --> 메소드 만들기 --> xml에 sql 구문 작성
//		ArrayList<BroadCast> result = mapper.getMonthData();
//		
//		// 2. 조회한 결과값을 return 반환 시켜주기
//		return result;
//		// 만약에 객체, ArrayList 같은 복잡한 형태를 화면에 출력하려면?
//		// --> jsp/servlet : Gson 라이브러리 사용
//		// --> spring framework : jackson-databind 라이브러리 사용 (자동으로 결과값을 convert)
//	}
//	
//	// 연령대별 시청률 조회하는 메소드
//	@RequestMapping("/getAgeData")
//	public @ResponseBody BroadCast getAgeData() {
//		
//		// db에서 데이터 조회하기 -> mapper interface -> xml sql 구문 작성
//		BroadCast result2 = mapper.getAgeData();
//		
//		// 결과값 반환
//		return result2;
//	}
	
	
	
	
	
	
	
	
	
}
