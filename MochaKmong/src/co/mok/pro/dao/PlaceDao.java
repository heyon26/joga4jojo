package co.mok.pro.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.mok.pro.common.DAO;
import co.mok.pro.vo.PlaceVo;



public class PlaceDao extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs;
	
	public ArrayList<PlaceVo> PlaceList() {
		ArrayList<PlaceVo> list = new ArrayList<PlaceVo>();
		PlaceVo vo = new PlaceVo();

		String sql = "select * from place";

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new PlaceVo();
				vo.setPlaceCode(rs.getInt("place_code"));
				vo.setUserId(rs.getString("user_id"));
				vo.setAreaCode(rs.getInt("area_code"));
				vo.setPlaceName(rs.getString("place_name"));
				vo.setPlaceAddress(rs.getString("place_address"));
				vo.setPlaceContent(rs.getClob("place_content"));
				vo.setPlaceDate(rs.getDate("place_date"));
				vo.setPlaceTel(rs.getString("place_tel"));
				list.add(vo);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}
	
	public PlaceVo PlaceSelect(PlaceVo vo) {
		String sql = "SELECT * FROM PLACE WHERE PLACE_CODE = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getUserId());
			rs = psmt.executeQuery();
			if (rs.next()) {
				vo.setPlaceCode(rs.getInt("place_code"));
				vo.setUserId(rs.getString("user_id"));
				vo.setAreaCode(rs.getInt("area_code"));
				vo.setPlaceName(rs.getString("place_name"));
				vo.setPlaceAddress(rs.getString("place_address"));
				vo.setPlaceContent(rs.getClob("place_content"));
				vo.setPlaceDate(rs.getDate("place_date"));
				vo.setPlaceTel(rs.getString("place_tel"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}
	
	public int PlaceInsert(PlaceVo vo) {
		String sql = "INSERT INTO PLACE(PLACE_CODE, USER_ID, AREA_CODE, PLACE_NAME, PLACE_ADDRESS, PLACE_CONTENT, PLACE_TEL)"
				+ "VALUES(?, ?, ?, ?, ?, ?, ?)";
		int n = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getPlaceCode());
			psmt.setString(2, vo.getUserId());
			psmt.setInt(3, vo.getAreaCode());
			psmt.setString(4, vo.getPlaceName());
			psmt.setString(5, vo.getPlaceAddress());
			psmt.setClob(6, vo.getPlaceContent());
			psmt.setString(7, vo.getPlaceTel());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}
	
	public int PlaceUpdate(PlaceVo vo) {
		int n = 0;
		String sql = null;
		if (vo.getPlaceContent() != null) {
			sql = "UPDATE PLACE SET PLACE_CONTENT=? WHERE PLACE_CODE=?";
		} else if (vo.getPlaceTel() != null) {
			sql = "UPDATE PLACE SET PLACE_TEL=? WHERE PLACE_CODE=?";
		}
		try {
			psmt = conn.prepareStatement(sql);
			if (vo.getPlaceContent() != null)
				psmt.setClob(1, vo.getPlaceContent());
			else if (vo.getPlaceTel() != null)
				psmt.setString(1, vo.getPlaceTel());
			    psmt.setInt(2, vo.getPlaceCode());
			 n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}
	
	public int PlaceDelete(PlaceVo vo) {
		int n = 0;
		String sql = "DELETE FROM PLACE WHERE PLACE_CODE = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getPlaceCode());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
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
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}


