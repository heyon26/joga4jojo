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
		String sql = "SELECT * FROM CLASS";
		
		try {
			psmt=conn.prepareStatement(sql);
			rs=psmt.executeQuery();
			while(rs.next()) {
				vo=new ClassVo();
				vo.setClassCode(rs.getInt("class_code"));
				vo.setUserId(rs.getString("user_id"));
				vo.setAreaCode(rs.getInt("area_code"));
				vo.setClassCode(rs.getInt("time_code"));
				vo.setClassName(rs.getString("class_name"));
				vo.setCateGoryA(rs.getString("category_a"));
				vo.setCateGoryB(rs.getString("category_b"));
				vo.setClassIntroduce(rs.getString("class_introduce"));
				vo.setCurriculum(rs.getString("curriculum"));
				vo.setRatingCode(rs.getInt("rating_code"));
				list.add(vo);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
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
				vo.setCateGoryB(rs.getString("category_b"));
				vo.setClassIntroduce(rs.getString("class_introduce"));
				vo.setCurriculum(rs.getString("curriculum"));
				vo.setRatingCode(rs.getInt("rating_code"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return vo;
		
	}
	
	//class 등록

	public int insertClass() {
		int n = 0;
		
		return n;
	}
	
	//class 내용 수정
	public int updateClass() {
		int n = 0;
		
		return n;
	}
	
	//class 삭제
	public int deleteClass() {
		int n = 0;
		
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
