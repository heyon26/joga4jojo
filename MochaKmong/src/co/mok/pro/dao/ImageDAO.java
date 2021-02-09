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
	
	public int InsertImage(ImageVO vo) {
		int n = 0;
		String sql = "INSERT INTO IMAGE VALUES(IMAGE_CODE.NEXTVAL, ?, ?)";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getUserId());
			psmt.setString(2, vo.getImage());
			n = psmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
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
