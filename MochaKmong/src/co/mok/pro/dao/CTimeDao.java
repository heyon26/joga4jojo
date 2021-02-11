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
		String sql = "SELECT CT.TIME_CODE, CT.CLASS_CODE, TO_CHAR(ct.START_TIME,'YYYY/MM/DD') AS START_TIME, CT.FIXED_NUMBER, "
				+ "NVL(C.REGISTER_MEMBER,0) AS REGISTER_NUMBER, (CT.FIXED_NUMBER - NVL(C.REGISTER_MEMBER,0) ) AS POSSIBLE_NUMBER "
				+ "FROM C_TIME CT, CLASS C WHERE CT.CLASS_CODE= C.CLASS_CODE AND CT.CLASS_CODE = ?";
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
	
	//클래스 결제 완료 후 해당 클래스에 등록인원 수 넣기
	public int updateRgstNum(CTimeVo vo) {
		int n=0;
		String sql ;
		try {
			sql="UPDATE CLASS SET REGISTER_NUMBER= ? WHERE CLASS_CODE= ? and start_time=?";
			psmt=conn.prepareStatement(sql);
			psmt.setInt(1, vo.getRegisterNumber());
			psmt.setInt(2, vo.getClassCode());
			psmt.setString(3, vo.getStartTime());
			n=psmt.executeUpdate();
			System.out.println(n+"개 행 class table 업데이트 완료");
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return n;
	}
	
	//클래스 결제 완료후  등록테이블에 등록
	public int registerClass(CRegisterVo vo,String startTime) {
		int n=0;
		String sql="INSERT INTO C_REGISTER VALUES(REGISTER_CODE_SEQ.NEXTVAL,?,(select time_code from c_time where start_time= "+startTime+" ))";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, vo.getUserId());
			n=psmt.executeUpdate();
			System.out.println(n+"개 행 register 테이블 업뎃 완료");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
	
	//클래스 결제 결과 등록 
	public int payClassPrice(PaymentVo vo) {
		int n=0;
		String sql = "insert into payment values(pay_seq.nextval,?,?,?,sysdate,'카드결제'";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setInt(1, vo.getRegisterCode());
			psmt.setString(2, vo.getUserId());
			psmt.setInt(3, vo.getMoney());
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return n;
	}
	
}
