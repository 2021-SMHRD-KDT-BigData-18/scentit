package kr.smhrd.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class BroadCast {
	// table에 존재하는 컬럼을 전부 필드로 만들기
	
	private int brdcst_num;
	private String brdcst_de;
	private String program_nm;
	private float nyo_rt;
	private float n10s_rt;
	private float n20s_rt;
	private float n30s_rt;
	private float n40s_rt;
	private float n50s_rt;
	private float n60s_above_rt;
	private float male_rt; 
	private float female_rt;
	private float wtchng_rt;
	private String fixing_cast_nm;
	private String cast_nm;

}
