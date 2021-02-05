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
		String sql = "SELECT * FROM BOARD";
	
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
		String sql="SELECT * FROM BOARD WHERE BOARD_CODE=? ";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getBoardCode());
			rs = psmt.executeQuery();
			if(rs.next()) {
				vo = new BoardVo();
				vo.setBoardCode(rs.getInt("board_Code"));
				vo.setUserId(rs.getString("user_Id"));
				vo.setbBoard(rs.getString("b_Board"));
				vo.setbName(rs.getString("b_Name"));
				vo.setbContent(rs.getString("b_Content"));
				vo.setbCategoryA(rs.getString("b_Category_A"));
				vo.setbCategoryB(rs.getString("b_Category_B"));
				vo.setbDate(rs.getDate("b_Date"));
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
		String sql = "INSERT INTO BOARD values(class_code_seq.nextval,?,?,?,?,?,?,SYSDATE)";
		int n = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getUserId());
			psmt.setString(2, vo.getbBoard());
			psmt.setString(3, vo.getbName());
			psmt.setString(4, vo.getbContent());
			psmt.setString(5, vo.getbCategoryA());
			psmt.setString(6, vo.getbCategoryB());
			
			n = psmt.executeUpdate();
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
	public int update(BoardVo vo) {
		int n = 0;
		String sql = "UPDATE BOARD SET b_board=?, b_name=?,"
				+ " b_content=?, b_category_a=?,"
				+ " b_category_b=? where board_code=?;";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getbBoard());
			psmt.setString(2, vo.getbName());
			psmt.setString(3, vo.getbContent());
			psmt.setString(4, vo.getbCategoryA());
			psmt.setString(5, vo.getbCategoryB());
			psmt.setInt(6, vo.getBoardCode());
			
			n= psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return n;
	}
	//insert
	//
	//delete
	public int delete(BoardVo vo) {
		int n = 0;
		String sql = "DELETE FROM BOARD WHERE BOARD_CODE=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getBoardCode());
			
			n=psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return n;
	}
	//delete
	//
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
