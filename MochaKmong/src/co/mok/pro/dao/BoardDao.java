package co.mok.pro.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.mok.pro.common.DAO;
import co.mok.pro.vo.BoardVo;



public class BoardDao extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs;
	//selectList -게시판 전체 출력
	public ArrayList<BoardVo> selectList(){
		ArrayList<BoardVo> list = new ArrayList<BoardVo>();
		BoardVo vo;
		String sql = "SELECT * FROM BOARD ORDER BY 1";
	
		try {
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		while(rs.next()) {
			vo = new BoardVo();
			vo.setBoardCode(rs.getInt("board_Code"));
			vo.setUserId(rs.getString("user_Id"));
			vo.setbBoard(rs.getString("b_Board"));
			vo.setbName(rs.getString("b_Name"));
			vo.setbContent(rs.getString("b_Content"));
			vo.setbCategoryA(rs.getString("b_Category_A"));
			vo.setbCategoryB(rs.getString("b_Category_B"));
			vo.setbDate(rs.getDate("b_Date"));
			list.add(vo);
			System.out.println("리스트추가"+vo.getbName());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list; 
	}
	//selectList
	//
	//select - 게시판 조건검색
	public BoardVo select(BoardVo vo) {
		String sql="SELECT * FROM BOARD WHERE BOARDCODE=? ";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getBoardCode());
			rs = psmt.executeQuery();
			if(rs.next()) {
				vo = new BoardVo();
				vo.setBoardCode(rs.getInt("boardCode"));
				vo.setUserId(rs.getString("userId"));
				vo.setbBoard(rs.getString("bBoard"));
				vo.setbName(rs.getString("bName"));
				vo.setbContent(rs.getString("bContent"));
				vo.setbCategoryA(rs.getString("bCategoryA"));
				vo.setbCategoryB(rs.getString("bCategoryB"));
				vo.setbDate(rs.getDate("bDate"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return vo;
	}
	//select
	//
	//insert-게시판 게시글 등록
	public int insert(BoardVo vo) {
		String sql = "INSERT INTO BOARD values(?,?,?,?,?,?,?,SYSDATE)";
		int n = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getBoardCode());
			psmt.setString(2, vo.getUserId());
			psmt.setString(3, vo.getbBoard());
			psmt.setString(4, vo.getbName());
			psmt.setString(5, vo.getbContent());
			psmt.setString(6, vo.getbCategoryA());
			psmt.setString(7, vo.getbCategoryB());
			psmt.setDate(8, vo.getbDate());
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return n;
	}
	//insert
	//
	//update-게시판 글 수정
	
	//public int update(BoardVo vo) {
	//}
	
	
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
