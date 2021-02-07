package co.mok.pro.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.mok.pro.common.DAO;
import co.mok.pro.vo.ClassVo;

public class ClassDao extends DAO {
	PreparedStatement psmt;
	ResultSet rs;
	
	//class 전체목록 생성
	public ArrayList<ClassVo> selectClassList(){
		ArrayList<ClassVo> list= new ArrayList<ClassVo>();
		ClassVo vo;
		String sql = "SELECT * FROM CLASS ORDER BY class_code DESC";
		
		try {
			psmt=conn.prepareStatement(sql);
			rs=psmt.executeQuery();
			while(rs.next()) {
				vo=new ClassVo();
				vo.setClassCode(rs.getInt("class_code"));
				vo.setUserId(rs.getString("user_id"));
				vo.setAreaCode(rs.getInt("area_code"));
				vo.setClassName(rs.getString("class_name"));
				vo.setCateGoryA(rs.getString("category_a"));
				vo.setClassIntroduce(rs.getString("class_introduce"));
				vo.setCurriculum(rs.getString("curriculum"));
				vo.setClassContent(rs.getString("class_content"));
				vo.setClassAddress(rs.getString("class_address"));
				vo.setRegisterMember(rs.getInt("register_member"));
				vo.setClassPrice(rs.getInt("class_price"));
				vo.setClassDate(rs.getDate("class_date"));
				vo.setRatingCode(rs.getInt("rating_code"));
				vo.setClassTel(rs.getString("class_tel"));
				list.add(vo);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}
	
	//main 화면에서 검색시 매개변수 받아서 class list 출력
	public ArrayList<ClassVo> selectClassList(int option, String condition){
		ArrayList<ClassVo> list= new ArrayList<ClassVo>();
		ClassVo vo;

		try {
			String sql = null;
			String a1 = null;
			String a2 =null;
			String a3 =null;
			
			 if(option != 0 && condition.equals("all")) {
				 sql ="select c.*, a.area_name from class c, area a where a.area_code=c.area_code";
				 psmt=conn.prepareStatement(sql);	
			 }else if(option==1 ) {
				 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where c.category_a like '%"+condition+"%'";
				 psmt=conn.prepareStatement(sql);
			 }else if(option==2 && condition.equals("서울/경기/인천")) {
				 a1 = "서울";
				 a2 ="경기";
				 a3 ="인천";
				 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
				 psmt=conn.prepareStatement(sql);
			 }else if(option==2 && condition.equals("대전/세종/충청")) { 
				 a1 = "대전";
				 a2 ="세종";
				 a3 ="충청";
				 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
				 psmt=conn.prepareStatement(sql);
			 }else if(option==2 && condition.equals("강원")) { 
				 a1 = "강원";
				 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%'";
				 psmt=conn.prepareStatement(sql);
			 }else if(option==2 && condition.equals("광주/전라")) { 
				 a1 = "광주";
				 a2 ="전라";
				 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%'";
				 psmt=conn.prepareStatement(sql);
			 }else if(option==2 && condition.equals("대구/경북")) {
				 a1 = "대구";
				 a2 ="경상북";
				 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%'";
				 psmt=conn.prepareStatement(sql);
			 }else if(option==2 && condition.equals("부산/울산/경남")) {
				 a1 = "부산";
				 a2 ="울산";
				 a3 ="경상남";
				 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
				 psmt=conn.prepareStatement(sql);
			 }else if(option==2 && condition.equals("제주")) {
				 a1 = "제주";
				 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%'";
				 psmt=conn.prepareStatement(sql);
			 }
			 
			 rs=psmt.executeQuery();
			while(rs.next()) {
				vo=new ClassVo();
				vo.setClassCode(rs.getInt("class_code"));
				vo.setUserId(rs.getString("user_id"));
				vo.setAreaCode(rs.getInt("area_code"));
				vo.setClassName(rs.getString("class_name"));
				vo.setCateGoryA(rs.getString("category_a"));
				vo.setClassIntroduce(rs.getString("class_introduce"));
				vo.setCurriculum(rs.getString("curriculum"));
				vo.setClassContent(rs.getString("class_content"));
				vo.setClassAddress(rs.getString("class_address"));
				vo.setRegisterMember(rs.getInt("register_member"));
				vo.setClassPrice(rs.getInt("class_price"));
				vo.setClassDate(rs.getDate("class_date"));
				vo.setRatingCode(rs.getInt("rating_code"));
				vo.setClassTel(rs.getString("class_tel"));
				vo.setAreaName(rs.getString("area_name"));
				list.add(vo);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
		return list;
	}
	
	//class 목록 중 1개 생성 (class_code로 검색)
	
	public ClassVo selectClass(ClassVo vo) {
		
		String sql = "SELECT * FROM CLASS WHERE CLASS_CODE= ?";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setInt(1, vo.getClassCode());
			rs=psmt.executeQuery();
			if(rs.next()) {
				vo=new ClassVo();
				vo.setClassCode(rs.getInt("class_code"));
				vo.setUserId(rs.getString("user_id"));
				vo.setAreaCode(rs.getInt("area_code"));
				vo.setClassName(rs.getString("class_name"));
				vo.setCateGoryA(rs.getString("category_a"));
				vo.setClassIntroduce(rs.getString("class_introduce"));
				vo.setCurriculum(rs.getString("curriculum"));
				vo.setClassContent(rs.getString("class_content"));
				vo.setClassAddress(rs.getString("class_address"));
				vo.setRegisterMember(rs.getInt("register_member"));
				vo.setClassPrice(rs.getInt("class_price"));
				vo.setClassDate(rs.getDate("class_date"));
				vo.setRatingCode(rs.getInt("rating_code"));
				vo.setClassTel(rs.getString("class_tel"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return vo;
		
	}
	
	//class 등록
	public int insertClass(ClassVo vo) {
		int n = 0;
		
		return n;
	}
	
	//class 내용 수정
	public int updateClass(ClassVo vo) {
		int n = 0;
		
		return n;
	}
	
	//class 삭제
	public int deleteClass(ClassVo vo) {
		int n = 0;
		String sql = "DELETE FROM CLASS WHERE CLASS_CODE = ? ";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setInt(1, vo.getClassCode());
			
			psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return n;
	}
	
	
	
	private void close() {
		try {
			if(rs!=null) rs.close();
			if(psmt != null) psmt.close();
			if(conn!=null)psmt.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
}//end of main class
