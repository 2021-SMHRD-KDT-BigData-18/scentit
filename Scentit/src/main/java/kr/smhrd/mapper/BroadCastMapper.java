package kr.smhrd.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;

import kr.smhrd.entity.BroadCast;
import kr.smhrd.entity.SearchCriteria;

// @Mapper ---> 생략 가능
public interface BroadCastMapper {
	
	// 남/여/전체 시청률 평균을 조회하는 기능
	// 조회한 결과 행이 하나이기 때문에 BroadCast로 받아오기 -> arrayList 아님
	// session.selectOne();
	public BroadCast getRating(SearchCriteria cri);

	// 월별 전체시청률 평균 조회할 수 있는 기능
	public ArrayList<BroadCast> getMonthData(String program_nm);

	// 연령대별 시청률 조회할 수 있는 기능
	public BroadCast getAgeData(String program_nm);

	// 출연진 TOP5 조회하는 메소드
	@Select("SELECT FIXING_CAST_NM, CAST_NM FROM BROADCAST where program_nm = #{program_nm}")
	public ArrayList<BroadCast> getCastCount(String program_nm);
	
	
	
	
}
