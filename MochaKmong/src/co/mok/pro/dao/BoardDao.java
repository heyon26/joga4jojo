package co.mok.pro.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.mok.pro.common.DAO;
import co.mok.pro.vo.AnswerVo;
import co.mok.pro.vo.BoardVo;



public class BoardDao extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs;
	//selectList -공지게시판 전체 출력
	public ArrayList<BoardVo> selectList(){
		ArrayList<BoardVo> list = new ArrayList<BoardVo>();
		BoardVo vo;
		String sql = "SELECT * FROM BOARD WHERE B_BOARD='공지' order by 1 desc";
	
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
			vo.setbHit(rs.getInt("b_hit"));
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
	//askList 자주묻는 질문 리스트
	public ArrayList<BoardVo> askList(){
		ArrayList<BoardVo> list = new ArrayList<BoardVo>();
		BoardVo vo;
		String sql = "SELECT * FROM BOARD WHERE B_BOARD='질문' order by 1 desc";
	
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
			vo.setbHit(rs.getInt("b_hit"));
			list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list; 
	}
	//askList
	//
	//consultList
	public ArrayList<BoardVo> consultList(){
		ArrayList<BoardVo> list = new ArrayList<BoardVo>();
		BoardVo vo;
		String sql = "SELECT * FROM BOARD WHERE B_BOARD='문의' order by 1 desc";
	
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
			vo.setbHit(rs.getInt("b_hit"));
			list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list; 
	}
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
				vo.setbHit(rs.getInt("b_Hit"));
				hitCount(rs.getInt("board_Code"));
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
	//boardSearch -공지사항 내 검색 기능
	public ArrayList<BoardVo> getBoardSearch(String searchWord){
		ArrayList<BoardVo> list = new ArrayList<BoardVo>();
		BoardVo vo = null;
		String sql ="select * from board where b_name like ? and b_board='공지'"; //%여기에 넣기 불가
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, "%"+searchWord+"%");
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
				vo.setbHit(rs.getInt("b_hit"));
				System.out.println(vo);
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
		
	}

	//boardSearch
	//
	//insert-게시판 게시글 등록
	public int insert(BoardVo vo) {
		String sql = "INSERT INTO BOARD values(class_code_seq.nextval,?,?,?,?,?,?,SYSDATE,0)";
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
		String sql = "UPDATE BOARD SET b_board=?, b_name=?,  b_content=?, b_category_a=?, b_category_b=? where board_code=?";
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
	//조회수 증가
	private void hitCount(int boardCode) {
		String sql = "UPDATE BOARD SET B_HIT = B_HIT + 1 WHERE BOARD_CODE =?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, boardCode);
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();	
		}
		
	}
	//조회수 증가
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
	//close
	//
	//answerSelect 답변달기
	public ArrayList<AnswerVo> answerSelect(AnswerVo vo){
		ArrayList<AnswerVo> answerList = new ArrayList<AnswerVo>();
		AnswerVo avo;
		String sql = "SELECT * FROM ANSWER WHERE BOARD_CODE =?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getBoardCode());
			rs = psmt.executeQuery();
			while(rs.next()) {
				avo = new AnswerVo();
				avo.setBoardCode(rs.getInt("board_Code"));
				avo.setUserId(rs.getString("user_Id"));
				avo.setaContent(rs.getString("a_Content"));
				avo.setaDate(rs.getString("a_Date"));
				answerList.add(avo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return answerList;
	}
	//answerSelect
	//
	// 답글 삭제
	public int answerDelete(AnswerVo vo){
		int n = 0;
		String sql = "DELETE FROM ANSWER WHERE BOARD_CODE=?";
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
	//
	public int insertConsult(AnswerVo vo) {
	String sql = "INSERT INTO ANSWER values(?,?,?,SYSDATE)";
	int n = 0;
	try {
		psmt = conn.prepareStatement(sql);
		psmt.setInt(1, vo.getBoardCode());
		psmt.setString(2, vo.getUserId());
		psmt.setString(3, vo.getaContent());
		
		n = psmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close();
	}
	return n;
}
	
}
