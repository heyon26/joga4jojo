package co.mok.pro.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.mok.pro.common.DAO;
import co.mok.pro.vo.CTimeVo;
import co.mok.pro.vo.ClassVo;
import co.mok.pro.vo.ImageVo;

public class ClassDao extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs;

	// 클래스 일반등록
	public ClassVo insertClass(ClassVo vo) {

		String sql = "INSERT INTO CLASS(CLASS_CODE, USER_ID, AREA_CODE, CLASS_NAME, "
				+ "CATEGORY_A, CLASS_INTRODUCE, CLASS_CONTENT, CLASS_ADDRESS, CLASS_PRICE, " + "CLASS_DATE, CLASS_TEL)"
				+ "VALUES(CLASS_CODE_SEQ.NEXTVAL, ?,?,?,?,?,?,?,?,SYSDATE,?)";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getUserId());
			psmt.setInt(2, vo.getAreaCode());
			psmt.setString(3, vo.getClassName());
			psmt.setString(4, vo.getCateGoryA());
			psmt.setString(5, vo.getClassIntroduce());
			psmt.setString(6, vo.getClassContent());
			psmt.setString(7, vo.getClassAddress());
			psmt.setInt(8, vo.getClassPrice());
			psmt.setString(9, vo.getClassTel());
			psmt.executeUpdate();
			System.out.println("insertClass: " + rs);
			psmt = conn.prepareStatement("SELECT CLASS_CODE FROM CLASS WHERE CLASS_NAME=?");
			psmt.setString(1, vo.getClassName());
			rs = psmt.executeQuery();
			if (rs.next()) {
				vo = new ClassVo();
				vo.setClassCode(rs.getInt("class_code"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return vo;
	}

	// 클래스 summernote 이미지 등록
	public int summernoteImg(ImageVo vo) {
		int rs = 0;
		String sql = "INSERT INTO IMAGE VALUES(IMAGE_SEQ.NEXTVAL, ?,?)";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getUserId());
			psmt.setString(2, vo.getImage());
			rs = psmt.executeUpdate();
			System.out.println("imageUpload:" + vo.getImage());

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	// 클래스 일자별 등록(c_time)
	public int classTime(ArrayList<CTimeVo> list) {
		int rs = 0;
		String sql = "INSERT INTO C_TIME(TIME_CODE, START_TIME, CLASS_CODE, FIXED_NUMBER) "
				+ "VALUES(C_TIME_SEQ.NEXTVAL, TO_DATE(?,'YYYY-MM-DD'), ?, ?)";
		try {
			for (CTimeVo vo : list) {
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, vo.getStartTime());
				psmt.setInt(2, vo.getClassCode());
				psmt.setInt(3, vo.getFixedNumber());
				rs += psmt.executeUpdate();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}

		return rs;
	}

	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
