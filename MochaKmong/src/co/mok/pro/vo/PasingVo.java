package co.mok.pro.vo;

import co.mok.pro.dao.ClassDao;

public class PasingVo {
	private final static int pageCount =5; //한 페이지당 게시글 수 
	private int startPageNO; // 시작페이지(pasingnav 기준)
	private int endPageNO; //끝페이지(pasingnav 기준)
	private int lastPageNO= 0;
	
	
	public int getLastPageNO() {
		return lastPageNO;
	}
	public void setLastPageNO(int lastPageNO) {
		this.lastPageNO = lastPageNO;
	}
	public int getStartPageNO() {
		return startPageNO;
	}
	public void setStartPageNO(int startPageNO) {
		this.startPageNO = startPageNO;
	}
	
	public int getEndPageNO() {
		return endPageNO;
	}
	public void setEndPageNO(int endPageNO) {
		this.endPageNO = endPageNO;
	}
	
	//block 생성
	//현재 페이지가 속한 블락의 시작번호, 끝번호를 계산
	public void makeBlock(int curPage) {
		int blockNum = 0;
		blockNum = (int)Math.floor((curPage-1)/pageCount);
		startPageNO = (pageCount*blockNum)+1;
		endPageNO = startPageNO+(pageCount-1);
	}
	
	//총 페이지의 마지막 번호
	public void makeLastPageNum() {
	ClassDao dao= new ClassDao();
	int totalCount = dao.getTotalCount();
	if(totalCount%pageCount==0) {
			lastPageNO=(int)Math.floor(totalCount/pageCount);
		}else {
			lastPageNO = (int)Math.floor(totalCount/pageCount) +1;
		}
		
	}
	
//	public void makeLastPageNum(String kwd) {
//	ClassDao dao= new ClassDao();
//	int totalCount = dao.getTotalCount(kwd);
//	if(totalCount%pageCount==0) {
//			lastPageNO=(int)Math.floor(totalCount/pageCount);
//		}else {
//			lastPageNO = (int)Math.floor(totalCount/pageCount)+1 ;
//		}
//		
//	}
}

