package co.mok.pro.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.mok.pro.common.DAO;
import co.mok.pro.vo.FavClassVo;

public class FavClassDao extends DAO { // 찜한 클래스 Dao
	
	PreparedStatement psmt;
	ResultSet rs;
	
	// 찜한 클래스 페이지로 호출
	public ArrayList<FavClassVo> selectFavClass() {
		ArrayList<FavClassVo> list = new ArrayList<FavClassVo>();
		String sql = "select * from favclass";
		FavClassVo vo;
		try {
			vo = new FavClassVo();
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				vo = new FavClassVo();
				vo.setClassCode(rs.getInt("class_code"));
				vo.setUserId(rs.getString("user_id"));
				vo.setClassName(rs.getString("class_name"));
				vo.setCateGoryA(rs.getString("category_a"));
				list.add(vo);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
	
	// 찜한 클래스 취소
	public int deleteFavClass(FavClassVo vo) {
		int n = 0;
		
		String sql = "DELETE FROM FAVCLASS WHERE CLASS_CODE = ?";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getClassCode());
			n = psmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return n;
	}
	
	//close
	
		private void close() {
			try {
				if (rs != null) rs.close();
				if (psmt != null) psmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
}
