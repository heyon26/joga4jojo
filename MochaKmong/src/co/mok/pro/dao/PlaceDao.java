package co.mok.pro.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.mok.pro.common.DAO;
import co.mok.pro.vo.ClassVo;
import co.mok.pro.vo.PlaceVo;



public class PlaceDao extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs;
	
	public ArrayList<PlaceVo> placeList() {
		ArrayList<PlaceVo> list = new ArrayList<PlaceVo>();
		PlaceVo vo = new PlaceVo();

		String sql = "SELECT * FROM PLACE P JOIN AREA A ON(A.AREA_CODE=P.AREA_CODE)";

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
				vo.setPlaceContent(rs.getString("place_content"));
				vo.setPlaceDate(rs.getDate("place_date"));
				vo.setPlaceTel(rs.getString("place_tel"));
				vo.setAreaName(rs.getString("area_name"));
				list.add(vo);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}
	
	public PlaceVo placeSelect(PlaceVo vo) {
		String sql = "SELECT * FROM PLACE P JOIN AREA A ON(A.AREA_CODE=P.AREA_CODE) WHERE P.PLACE_CODE = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getPlaceCode());
			rs = psmt.executeQuery();
			if (rs.next()) {
				vo.setPlaceCode(rs.getInt("place_code"));
				vo.setUserId(rs.getString("user_id"));
				vo.setAreaCode(rs.getInt("area_code"));
				vo.setPlaceName(rs.getString("place_name"));
				vo.setPlaceAddress(rs.getString("place_address"));
				vo.setPlaceContent(rs.getString("place_content"));
				vo.setPlaceDate(rs.getDate("place_date"));
				vo.setPlaceTel(rs.getString("place_tel"));
				vo.setPlaceEmail(rs.getString("place_email"));
				vo.setAreaName(rs.getString("area_name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}
	
	public PlaceVo PlaceInsert(PlaceVo vo) {
		String sql = "INSERT INTO PLACE(PLACE_CODE, USER_ID, AREA_CODE, PLACE_NAME, PLACE_ADDRESS, PLACE_CONTENT, PLACE_TEL,PLACE_EMAIL)"
				+ "VALUES(PLACE_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?,?)";
		int n = 0;
		try {
			psmt = conn.prepareStatement(sql);
			//psmt.setInt(1, vo.getPlaceCode());
			psmt.setString(1, vo.getUserId());
			psmt.setInt(2, vo.getAreaCode());
			psmt.setString(3, vo.getPlaceName());
			psmt.setString(4, vo.getPlaceAddress());
			psmt.setString(5, vo.getPlaceContent());
			psmt.setString(6, vo.getPlaceTel());
			psmt.setString(7, vo.getPlaceEmail());
			n = psmt.executeUpdate();
			
			psmt = conn.prepareStatement("SELECT PLACE_CODE FROM PLACE WHERE PLACE_NAME=?");
			psmt.setString(1, vo.getPlaceName());
			rs = psmt.executeQuery();
			if(rs.next()) {
			vo.setPlaceCode(rs.getInt("place_code"));}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
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
				psmt.setString(1, vo.getPlaceContent());
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
	
	
	public ArrayList<PlaceVo> placeList2(String condition1){ //condition1=지역, condition2=카테고리
		ArrayList<PlaceVo> list= new ArrayList<PlaceVo>();
		PlaceVo vo;
		
		try {
			String sql = null;
			String a1 = null;
			String a2 =null;
			String a3 =null;
			
			
			  if(condition1.equals("서울/경기/인천")) {
				 a1 = "서울";
				 a2 ="경기";
				 a3 ="인천";
				 sql="select c.*, a.area_name from place c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
				 psmt=conn.prepareStatement(sql);
			 }else if(condition1.equals("대전/세종/충청")) { 
				 a1 = "대전";
				 a2 ="세종";
				 a3 ="충청";
				 sql="select c.*, a.area_name from place c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
				 psmt=conn.prepareStatement(sql);
			 }else if(condition1.equals("강원")) { 
				 a1 = "강원";
				 sql="select c.*, a.area_name from place c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%'";
				 psmt=conn.prepareStatement(sql);
			 }else if(condition1.equals("광주/전라")) { 
				 a1 = "광주";
				 a2 ="전라";
				 sql="select c.*, a.area_name from place c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%'";
				 psmt=conn.prepareStatement(sql);
			 }else if(condition1.equals("대구/경북")) {
				 a1 = "대구";
				 a2 ="경상북";
				 sql="select c.*, a.area_name from place c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%'";
				 psmt=conn.prepareStatement(sql);
			 }else if(condition1.equals("부산/울산/경남")) {
				 a1 = "부산";
				 a2 ="울산";
				 a3 ="경상남";
				 sql="select c.*, a.area_name from place c join area a on ( a.area_code=c.area_code ) wherea.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
				 psmt=conn.prepareStatement(sql);
			 }else if(condition1.equals("제주")) {
				 a1 = "제주";
				 sql="select c.*, a.area_name from place c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%'";
				 psmt=conn.prepareStatement(sql);
			 }
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				vo=new PlaceVo();
				vo.setPlaceCode(rs.getInt("place_code"));
				vo.setUserId(rs.getString("user_id"));
				vo.setAreaCode(rs.getInt("area_code"));
				vo.setPlaceName(rs.getString("place_name"));

				vo.setPlaceContent(rs.getString("place_content"));
				vo.setPlaceAddress(rs.getString("place_address"));
				vo.setPlaceTel(rs.getString("place_tel"));
				vo.setAreaName(rs.getString("area_name"));
				list.add(vo);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
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


