package co.mok.pro.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sun.prism.Image;

import co.mok.pro.common.DAO;
import co.mok.pro.vo.ImageVO;

public class ImageDAO extends DAO {

	private PreparedStatement psmt;
	private ResultSet rs;

	// 회원 이미지 조회
	public ArrayList<ImageVO> selectImageList() {
		ArrayList<ImageVO> list = new ArrayList<ImageVO>();

		String sql = "SELECT * FROM IMAGE";
		ImageVO vo;

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new ImageVO();
				vo.setImgCode(rs.getInt("image_code"));
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
	

	// 프로필 이미지 수정
	public int updateImage(ImageVO vo) {
		int n = 0;
		
		String sql = "UPDATE IMAGE SET IMAGE_CODE = ? WHERE USER_ID = ?";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getImgCode());
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
