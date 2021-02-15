package co.mok.pro.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.mok.pro.common.DAO;
import co.mok.pro.vo.ImageVo;

public class ImageDAO extends DAO {

	private PreparedStatement psmt;
	private ResultSet rs;

	// 회원 이미지 조회
	public ArrayList<ImageVo> selectImageList() {
		ArrayList<ImageVo> list = new ArrayList<ImageVo>();

		String sql = "SELECT * FROM IMAGE";
		ImageVo vo;

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new ImageVo();
				vo.setImageCode(rs.getInt("image_code"));
				vo.setUserId(rs.getString("user_id"));
				vo.setImage(rs.getString("image"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}
	
	// 이미지 가져오기
	public ImageVo selectImage(ImageVo vo) {
		String sql = "SELECT * FROM IMAGE WHERE USER_ID = ?";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getUserId());
			rs = psmt.executeQuery();
			if(rs.next()) {
				vo = new ImageVo();
				vo.setImage(rs.getString("image"));
				vo.setImageCode(rs.getInt("image_code"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return vo;
	}
	
	// 이미지 삽입
	public int InsertImage(ImageVo vo) {
		int n = 0;
		String sql = "INSERT INTO IMAGE VALUES(IMAGE_SEQ.NEXTVAL, ?, ?)";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getUserId());
			psmt.setString(2, vo.getImage());
			n = psmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return n;
	}
	

	// 프로필 이미지 수정
	public int updateImage(ImageVo vo) {
		int n = 0;
		
		String sql = "UPDATE IMAGE SET IMAGE= ? WHERE USER_ID = ?";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getImage());
			psmt.setString(2, vo.getUserId());
			n = psmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return n;
	}

	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				psmt.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

} // end of class
