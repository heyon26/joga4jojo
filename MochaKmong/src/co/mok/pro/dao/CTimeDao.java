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
		String sql="INSERT INTO C_REGISTER VALUES(REGISTER_CODE_SEQ.NEXTVAL,?,(select time_code from c_time where start_time= to_date(?,'yyyy/mm/dd') and class_code= ? ),?)";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, startTime);
			psmt.setInt(3, cCode);
			psmt.setInt(4, registerNumber);
			
			n=psmt.executeUpdate();
			System.out.println(n+"개 행 register 테이블 업뎃 완료");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
	

	
	
	
	//클래스 결제 결과 등록 
	public int payClassPrice(int rCode, String sTime, int totalPrice) {
		int n=0;
		String sql = "insert into payment values(pay_seq.nextval,?,?,?,sysdate,'카드결제')";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setInt(1, rCode);
			psmt.setString(2, sTime);
			psmt.setInt(3, totalPrice);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return n;
	}
	
}
