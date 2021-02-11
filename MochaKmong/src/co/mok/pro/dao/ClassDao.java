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
	PreparedStatement psmt;
	ResultSet rs;
	
	//class 전체목록 생성
	public ArrayList<ClassVo> selectClassList(){
		ArrayList<ClassVo> list= new ArrayList<ClassVo>();
		ClassVo vo;
		String sql = "SELECT * FROM CLASS ORDER BY class_code DESC"; 
		
		try {
			psmt=conn.prepareStatement(sql);

			rs=psmt.executeQuery();
			while(rs.next()) {
				vo=new ClassVo();
				vo.setClassCode(rs.getInt("class_code"));
				vo.setUserId(rs.getString("user_id"));
				vo.setAreaCode(rs.getInt("area_code"));
				vo.setClassName(rs.getString("class_name"));
				vo.setCateGoryA(rs.getString("category_a"));
				vo.setClassIntroduce(rs.getString("class_introduce"));

				vo.setClassContent(rs.getString("class_content"));
				vo.setClassAddress(rs.getString("class_address"));
				vo.setRegisterMember(rs.getInt("register_member"));
				vo.setClassPrice(rs.getInt("class_price"));
				vo.setClassDate(rs.getDate("class_date"));
				vo.setRatingCode(rs.getInt("rating_code"));
				vo.setClassTel(rs.getString("class_tel"));
				list.add(vo);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}
	
	
	
	//class 목록 중 1개 생성 (class_code로 검색)
	
	public ClassVo selectClass(ClassVo vo) {
		
		String sql = "SELECT * FROM CLASS WHERE CLASS_CODE= ?";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setInt(1, vo.getClassCode());
			rs=psmt.executeQuery();
			if(rs.next()) {
				vo=new ClassVo();
				vo.setClassCode(rs.getInt("class_code"));
				vo.setUserId(rs.getString("user_id"));
				vo.setAreaCode(rs.getInt("area_code"));
				vo.setClassName(rs.getString("class_name"));
				vo.setCateGoryA(rs.getString("category_a"));
				vo.setClassIntroduce(rs.getString("class_introduce"));

				vo.setClassContent(rs.getString("class_content"));
				vo.setClassAddress(rs.getString("class_address"));
				vo.setRegisterMember(rs.getInt("register_member"));
				vo.setClassPrice(rs.getInt("class_price"));
				vo.setClassDate(rs.getDate("class_date"));
				vo.setRatingCode(rs.getInt("rating_code"));
				vo.setClassTel(rs.getString("class_tel"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return vo;
		
	}
	
	// 유저에 따른 클래스 목록 조회
	// 작성(김찬곤 / 210209)
	public ArrayList<ClassVo> selectUserClassList(String id){
		ArrayList<ClassVo> list = new ArrayList<ClassVo>();
		String sql = "SELECT CLASS_CODE, CLASS_NAME, CATEGORY_A FROM CLASS WHERE USER_ID = ?";
		
		try {
			ClassVo vo = new ClassVo();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				vo = new ClassVo();
<<<<<<< HEAD
				vo.setClassCode(rs.getInt("class_code"));
=======
>>>>>>> refs/remotes/origin/changon
				vo.setClassName(rs.getString("class_name"));
				vo.setCateGoryA(rs.getString("category_a"));
				list.add(vo);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return list;
	}
	
	// 찜한 클래스 선택
	// 작성(김찬곤 / 210210)
	public ArrayList<ClassVo> selectFavClass() {
		ArrayList<ClassVo> list = new ArrayList<ClassVo>();
		String sql = "SELECT CLASS_CODE, CLASS_NAME, CATEGORY_A FROM CLASS";
		ClassVo vo;
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				vo = new ClassVo();
				vo.setClassCode(rs.getInt("class_code"));
				vo.setClassName(rs.getString("class_name"));
				vo.setCateGoryA(rs.getString("category_a"));
				list.add(vo);
			}	
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return list;
	}
	
	//class 등록

	
	//class 내용 수정
	public int updateClass(ClassVo vo) {
		int n = 0;
		
		return n;
	}
	
	//class 삭제
	public int deleteClass(ClassVo vo) {
		int n = 0;
		String sql = "DELETE FROM CLASS WHERE CLASS_CODE = ? ";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setInt(1, vo.getClassCode());
			
			psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return n;
	}
	
	//검색바에서 단어 입력으로 검색시에 사용 --사용함
	public ArrayList<ClassVo> selectClassList(String condition){
		ArrayList<ClassVo> list= new ArrayList<ClassVo>();
		ClassVo vo;
		String sql = "SELECT C.*, A.AREA_NAME FROM CLASS C JOIN AREA A ON ( A.AREA_CODE=C.AREA_CODE ) WHERE C.CATEGORY_A LIKE '%'||?||'%' OR C.CLASS_NAME LIKE '%'||?||'%' OR A.AREA_NAME LIKE '%'||?||'%'";
		
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, condition);
			psmt.setString(2, condition);
			psmt.setString(3, condition);
			rs=psmt.executeQuery();
			while(rs.next()) {
				vo=new ClassVo();
				vo.setClassCode(rs.getInt("class_code"));
				vo.setUserId(rs.getString("user_id"));
				vo.setAreaCode(rs.getInt("area_code"));
				vo.setClassName(rs.getString("class_name"));
				vo.setCateGoryA(rs.getString("category_a"));
				vo.setClassIntroduce(rs.getString("class_introduce"));

				vo.setClassContent(rs.getString("class_content"));
				vo.setClassAddress(rs.getString("class_address"));
				vo.setRegisterMember(rs.getInt("register_member"));
				vo.setClassPrice(rs.getInt("class_price"));
				vo.setClassDate(rs.getDate("class_date"));
				vo.setRatingCode(rs.getInt("rating_code"));
				vo.setClassTel(rs.getString("class_tel"));
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
	
	
	
	//검색바에서 radio값으로 검색시에 사용 --사용함
		public ArrayList<ClassVo> searchClassList1(String condition1, String condition2){ //condition1=지역, condition2=카테고리
			ArrayList<ClassVo> list= new ArrayList<ClassVo>();
			ClassVo vo;
			
			try {
				String sql = null;
				String a1 = null;
				String a2 =null;
				String a3 =null;
				
				if (condition1.equals("all") && condition2.equals("all")) {
					 sql ="select c.*, a.area_name from class c, area a where a.area_code=c.area_code";
//					sql="select * from("
//							+ " select  rownum as rnum , c.* from "
//							+ " (select c.*, a.area_name from class c, area a where a.area_code=c.area_code order by class_code desc) c  )"
//							+ " where rnum >= "+ startrow +" and "+ "rnum <=" + endrow ;
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("서울/경기/인천") &&condition2.equals(condition2)) {
					 a1 = "서울";
					 a2 ="경기";
					 a3 ="인천";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where c.category_a like'%"+condition2+"%' and a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("대전/세종/충청")  &&condition2.equals(condition2)) { 
					 a1 = "대전";
					 a2 ="세종";
					 a3 ="충청";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where c.category_a like'%"+condition2+"%' and a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("강원") &&condition2.equals(condition2)) { 
					 a1 = "강원";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where c.category_a like'%"+condition2+"%' and a.area_name like '%"+a1+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("광주/전라") &&condition2.equals(condition2)) { 
					 a1 = "광주";
					 a2 ="전라";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where c.category_a like'%"+condition2+"%' and a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("대구/경북") &&condition2.equals(condition2)) {
					 a1 = "대구";
					 a2 ="경상북";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where c.category_a like'%"+condition2+"%' and a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("부산/울산/경남") &&condition2.equals(condition2)) {
					 a1 = "부산";
					 a2 ="울산";
					 a3 ="경상남";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where c.category_a like'%"+condition2+"%' and a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("제주") &&condition2.equals(condition2)) {
					 a1 = "제주";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where c.category_a like'%"+condition2+"%' and a.area_name like '%"+a1+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("all")&& condition2.equals(condition2)) {
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where c.category_a like'%"+condition2+"%'";
					 psmt=conn.prepareStatement(sql);
				 } 
				
				 else if(condition1.equals("서울/경기/인천") &&condition2.equals("all")) {
					 a1 = "서울";
					 a2 ="경기";
					 a3 ="인천";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("대전/세종/충청")  &&condition2.equals("all")) { 
					 a1 = "대전";
					 a2 ="세종";
					 a3 ="충청";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("강원") &&condition2.equals("all")) { 
					 a1 = "강원";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("광주/전라") &&condition2.equals("all")) { 
					 a1 = "광주";
					 a2 ="전라";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("대구/경북") &&condition2.equals("all")) {
					 a1 = "대구";
					 a2 ="경상북";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("부산/울산/경남") &&condition2.equals("all")) {
					 a1 = "부산";
					 a2 ="울산";
					 a3 ="경상남";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) wherea.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("제주") &&condition2.equals("all")) {
					 a1 = "제주";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%'";
					 psmt=conn.prepareStatement(sql);
				 }
				rs=psmt.executeQuery();
				
				while(rs.next()) {
					vo=new ClassVo();
					vo.setClassCode(rs.getInt("class_code"));
					vo.setUserId(rs.getString("user_id"));
					vo.setAreaCode(rs.getInt("area_code"));
					vo.setClassName(rs.getString("class_name"));
					vo.setCateGoryA(rs.getString("category_a"));
					vo.setClassIntroduce(rs.getString("class_introduce"));

					vo.setClassContent(rs.getString("class_content"));
					vo.setClassAddress(rs.getString("class_address"));
					vo.setRegisterMember(rs.getInt("register_member"));
					vo.setClassPrice(rs.getInt("class_price"));
					vo.setClassDate(rs.getDate("class_date"));
					vo.setRatingCode(rs.getInt("rating_code"));
					vo.setClassTel(rs.getString("class_tel"));
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
		
		// 검색화면 radiobox에서 카테고리가 all이면
		public ArrayList<ClassVo> searchClassList2(String condition1){ //condition1=지역, condition2=카테고리
			ArrayList<ClassVo> list= new ArrayList<ClassVo>();
			ClassVo vo;
			
			try {
				String sql = null;
				String a1 = null;
				String a2 =null;
				String a3 =null;
				
				
				  if(condition1.equals("서울/경기/인천")) {
					 a1 = "서울";
					 a2 ="경기";
					 a3 ="인천";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("대전/세종/충청")) { 
					 a1 = "대전";
					 a2 ="세종";
					 a3 ="충청";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("강원")) { 
					 a1 = "강원";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("광주/전라")) { 
					 a1 = "광주";
					 a2 ="전라";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("대구/경북")) {
					 a1 = "대구";
					 a2 ="경상북";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("부산/울산/경남")) {
					 a1 = "부산";
					 a2 ="울산";
					 a3 ="경상남";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) wherea.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(condition1.equals("제주")) {
					 a1 = "제주";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%'";
					 psmt=conn.prepareStatement(sql);
				 }
				rs=psmt.executeQuery();
				
				while(rs.next()) {
					vo=new ClassVo();
					vo.setClassCode(rs.getInt("class_code"));
					vo.setUserId(rs.getString("user_id"));
					vo.setAreaCode(rs.getInt("area_code"));
					vo.setClassName(rs.getString("class_name"));
					vo.setCateGoryA(rs.getString("category_a"));
					vo.setClassIntroduce(rs.getString("class_introduce"));

					vo.setClassContent(rs.getString("class_content"));
					vo.setClassAddress(rs.getString("class_address"));
					vo.setRegisterMember(rs.getInt("register_member"));
					vo.setClassPrice(rs.getInt("class_price"));
					vo.setClassDate(rs.getDate("class_date"));
					vo.setRatingCode(rs.getInt("rating_code"));
					vo.setClassTel(rs.getString("class_tel"));
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
	
	//main 화면에서 검색시 매개변수 받아서 class list 출력 --사용함
		public ArrayList<ClassVo> selectClassList(int option, String condition){
			ArrayList<ClassVo> list= new ArrayList<ClassVo>();
			ClassVo vo;

			try {
				String sql = null;
				String a1 = null;
				String a2 =null;
				String a3 =null;
				
				 if(option != 0 && condition.equals("all")) {
					 sql ="select c.*, a.area_name from class c, area a where a.area_code=c.area_code";
					 psmt=conn.prepareStatement(sql);	
				 }else if(option==1 ) {
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where c.category_a like '%"+condition+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(option==2 && condition.equals("서울/경기/인천")) {
					 a1 = "서울";
					 a2 ="경기";
					 a3 ="인천";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(option==2 && condition.equals("대전/세종/충청")) { 
					 a1 = "대전";
					 a2 ="세종";
					 a3 ="충청";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(option==2 && condition.equals("강원")) { 
					 a1 = "강원";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(option==2 && condition.equals("광주/전라")) { 
					 a1 = "광주";
					 a2 ="전라";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(option==2 && condition.equals("대구/경북")) {
					 a1 = "대구";
					 a2 ="경상북";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(option==2 && condition.equals("부산/울산/경남")) {
					 a1 = "부산";
					 a2 ="울산";
					 a3 ="경상남";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%' or a.area_name like '%"+a2+"%' or a.area_name like '%"+a3+"%'";
					 psmt=conn.prepareStatement(sql);
				 }else if(option==2 && condition.equals("제주")) {
					 a1 = "제주";
					 sql="select c.*, a.area_name from class c join area a on ( a.area_code=c.area_code ) where a.area_name like '%"+a1+"%'";
					 psmt=conn.prepareStatement(sql);
				 }
				 
				 rs=psmt.executeQuery();
				while(rs.next()) {
					vo=new ClassVo();
					vo.setClassCode(rs.getInt("class_code"));
					vo.setUserId(rs.getString("user_id"));
					vo.setAreaCode(rs.getInt("area_code"));
					vo.setClassName(rs.getString("class_name"));
					vo.setCateGoryA(rs.getString("category_a"));
					vo.setClassIntroduce(rs.getString("class_introduce"));

					vo.setClassContent(rs.getString("class_content"));
					vo.setClassAddress(rs.getString("class_address"));
					vo.setRegisterMember(rs.getInt("register_member"));
					vo.setClassPrice(rs.getInt("class_price"));
					vo.setClassDate(rs.getDate("class_date"));
					vo.setRatingCode(rs.getInt("rating_code"));
					vo.setClassTel(rs.getString("class_tel"));
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
		String sql = "INSERT INTO IMAGE VALUES(IMAGE_CODE.NEXTVAL, ?,?)";

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
