package co.mok.pro.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.mok.pro.common.DAO;
import co.mok.pro.vo.CRegisterVo;
import co.mok.pro.vo.CTimeVo;
import co.mok.pro.vo.ClassVo;
import co.mok.pro.vo.PaymentVo;

public class CTimeDao extends DAO {
	PreparedStatement psmt;
	ResultSet rs;

	//클래스 신청 옵션 불러오기
	public ArrayList<CTimeVo> applyOption(int code) {
		ArrayList<CTimeVo> list = new ArrayList<CTimeVo>();
		CTimeVo cvo;		
		String sql = "SELECT TIME_CODE, CLASS_CODE, TO_CHAR(START_TIME,'YYYY/MM/DD') AS START_TIME, FIXED_NUMBER, REGISTER_NUMBER, POSSIBLE_NUMBER "
				+ " FROM C_TIME  WHERE class_CODE = ?";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setInt(1, code);
			rs=psmt.executeQuery();
			while(rs.next()) {
				cvo=new CTimeVo();
				cvo.setTimeCode(rs.getInt("time_code"));
				cvo.setClassCode(rs.getInt("class_code"));
				cvo.setStartTime(rs.getString("start_time"));
				cvo.setFixedNumber(rs.getInt("fixed_number"));
				cvo.setRegisterNumber(rs.getInt("register_number"));
				cvo.setPossibleNumber(rs.getInt("possible_number"));
				list.add(cvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	
	//클래스 결제 완료후  등록테이블에 등록 (트리거 생성 되어있어서 c_register에 insert 되면 자동으로 c_time의 register_number 업데이트 )
	public int registerClass(String id,String startTime, int cCode, int registerNumber) {
		int n=0;
		String sql="INSERT INTO C_REGISTER(REGISTER_CODE,USER_ID,TIME_CODE,REGISTER_NUMBER) "
				+ " VALUES(REGISTER_CODE_SEQ.NEXTVAL,?,(SELECT TIME_CODE FROM C_TIME WHERE START_TIME= TO_DATE(?,'YYYY/MM/DD') AND CLASS_CODE= ? ),?)";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, startTime);
			psmt.setInt(3, cCode);
			psmt.setInt(4, registerNumber);
			
			n=psmt.executeUpdate();
			System.out.println(n+"개 행 클래스 등록(insert) 업뎃 완료 (c_register table)");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
	
	
	//클래스 결제 결과 등록 
	public int payResultInto(PaymentVo vo) {
		int n=0;
		String sql = "insert into payment(pay_code,user_id,money,pay_date,pay_method) values(pay_seq.nextval,?,?,sysdate,'카드결제')";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, vo.getUserId());
			psmt.setInt(2,vo.getMoney());
			n=psmt.executeUpdate();
			System.out.println(n+"개 행 결제결과 insert 완료(payment table)");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return n;
	}

}
