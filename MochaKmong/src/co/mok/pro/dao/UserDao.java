package co.mok.pro.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.mok.pro.common.DAO;
import co.mok.pro.vo.UserVo;

public class UserDao extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs;

	public ArrayList<UserVo> UserList() {
		ArrayList<UserVo> list = new ArrayList<UserVo>();
		UserVo vo = new UserVo();

		String sql = "SELECT * FROM M_USER";

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new UserVo();
				vo.setUserId(rs.getString("user_id"));
				vo.setUserPw(rs.getString("user_pw"));
				vo.setUserName(rs.getString("user_name"));
				vo.setUserTel(rs.getString("user_tel"));
				vo.setUserEmail(rs.getString("user_email"));
				vo.setUserZipcode(rs.getString("user_zipcode"));
				vo.setUserAddress(rs.getString("user_address"));
				vo.setUserJoindate(rs.getDate("user_joindate"));
				vo.setUserAuth(rs.getString("user_auth"));

				list.add(vo);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}

	public UserVo UserSelect(UserVo vo) {
		String sql = "SELECT * FROM M_USER WHERE USER_ID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getUserId());
			rs = psmt.executeQuery();
			if (rs.next()) {
				vo.setUserId(rs.getString("user_id"));
				vo.setUserPw(rs.getString("user_pw"));
				vo.setUserName(rs.getString("user_name"));
				vo.setUserTel(rs.getString("user_tel"));
				vo.setUserEmail(rs.getString("user_email"));
				vo.setUserZipcode(rs.getString("user_zipcode"));
				vo.setUserAddress(rs.getString("user_address"));
				vo.setUserJoindate(rs.getDate("user_joindate"));
				vo.setUserAuth(rs.getString("user_auth"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return vo;
	}
	public UserVo UserLogin(UserVo vo) {
		String sql = "SELECT * FROM M_USER WHERE USER_ID = ? AND USER_PW = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getUserId());
			psmt.setString(2, vo.getUserPw());
			rs = psmt.executeQuery();
			if (rs.next()) {
				vo.setUserName(rs.getString("user_name"));
				vo.setUserAuth(rs.getString("user_auth"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return vo;
	}

	public int UserInsert(UserVo vo) {
		String sql = "INSERT INTO M_USER(USER_ID, USER_PW, USER_NAME, USER_TEL, USER_EMAIL, USER_ZIPCODE, USER_ADDRESS)"
				+ "VALUES(?, ?, ?, ?, ?, ?, ?)";
		int n = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getUserId());
			psmt.setString(2, vo.getUserPw());
			psmt.setString(3, vo.getUserName());
			psmt.setString(4, vo.getUserTel());
			psmt.setString(5, vo.getUserEmail());
			psmt.setString(6, vo.getUserZipcode());
			psmt.setString(7, vo.getUserAddress());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int UserUpdate(UserVo vo) {
		int n = 0;
		String sql = null;
		if (vo.getUserPw() != null) {
			sql = "UPDATE M_USER SET USER_PW=? WHERE USER_ID=?";
		} else if (vo.getUserTel() != null) {
			sql = "UPDATE M_USER SET USER_TEL=? WHERE USER_ID=?";
		} else if (vo.getUserEmail() != null) {
			sql = "UPDATE M_USER SET USER_EMAIL=? WHERE USER_ID=?";
		}
		try {
			psmt = conn.prepareStatement(sql);
			if (vo.getUserPw() != null)
				psmt.setString(1, vo.getUserPw());
			else if (vo.getUserTel() != null)
				psmt.setString(1, vo.getUserTel());
			else if (vo.getUserEmail() != null)
				psmt.setString(1, vo.getUserEmail());
			psmt.setString(2, vo.getUserId());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int UserDelete(UserVo vo) {
		int n = 0;
		String sql = "DELETE FROM M_USER WHERE USER_ID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getUserId());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public boolean isidCheck(String id) {
		boolean bool = true;
		String sql = "SELECT USER_ID FROM M_USER WHERE USER_ID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				bool = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return bool;
	}
	
	// 수정(김찬곤)_210208
	// 로그인 후 회원정보 가져오기
		public UserVo getUserInfo(String id) {
			String sql = "SELECT * FROM M_USER WHERE USER_ID = ?";
			UserVo vo = null;
			try {
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, id);
				rs = psmt.executeQuery();
				if (rs.next()) {
					vo = new UserVo();
					vo.setUserId(rs.getString("user_id"));
					vo.setUserPw(rs.getString("user_pw"));
					vo.setUserName(rs.getString("user_name"));
					vo.setUserTel(rs.getString("user_tel"));
					vo.setUserEmail(rs.getString("user_email"));
					vo.setUserZipcode(rs.getString("user_zipcode"));
					vo.setUserAddress(rs.getString("user_address"));
					vo.setUserJoindate(rs.getDate("user_joindate"));
					vo.setUserAuth(rs.getString("user_auth"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}

			return vo;
		}
		
		// 수정(김찬곤)_210208
		// 회원 정보 수정
		public int UpdateProfile(UserVo vo) {
			int n = 0;
			
			String sql = "update m_user ";
				   sql += "set user_name = ?, user_tel = ?, user_email = ?, user_address = ?";
				   sql += " where user_id = ?";
			
			try {
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, vo.getUserName());
				psmt.setString(2, vo.getUserTel());
				psmt.setString(3, vo.getUserEmail());
				psmt.setString(4, vo.getUserAddress());
				psmt.setString(5, vo.getUserId());
				n = psmt.executeUpdate();
				System.out.println(n + "건 수정 완료");
			}catch(SQLException e) {
				e.printStackTrace();
				System.out.println("수정 실패");
			}finally {
				close();
			}
			
			return n;
		}
	

	public String findPw(String userId, String userName, String userEmail ) {
		String pw = null;
		try {
			String sql = "SELECT USER_PW FROM M_USER WHERE USER_ID = ? AND USER_NAME = ? AND USER_EMAIL = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, userId);
			psmt.setString(2, userName);
			psmt.setString(3, userEmail);
			ResultSet rs = psmt.executeQuery();
			if (rs.next())
				pw = rs.getString("USER_PW");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pw;
	}

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
