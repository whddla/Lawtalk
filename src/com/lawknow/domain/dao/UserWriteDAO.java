package com.lawknow.domain.dao;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.board.app.domain.vo.BoardDTO;
import com.lawknow.domain.vo.UserReviewVO;

import com.lawknow.domain.vo.UserWriteVO;
import com.mybatis.config.MyBatisConfig;

public class UserWriteDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public UserWriteDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}

	//의뢰인 글 삭제
	public void userDelete(int userWriteNum)  {
		sqlSession.delete("UserWrite.userDelete", userWriteNum);
	}
	
	//의뢰인 글 수정
	public int userWriteUpdate(int userWriteNum) {
		return sqlSession.update("UserWrite.userWriteUpdate", userWriteNum);
	}
	
	//의뢰인 글 작성
	public void userWrite(UserWriteVO userWriteVO) {
		sqlSession.insert("UserWrite.userWrite", userWriteVO);
	}

	//사건 번호
	public int requestNum(UserWriteVO userWriteVO) {
		return sqlSession.selectOne("UserWrite.requestNum");
	}

	//의뢰인 글 번호
	public int userWirteNum(UserWriteVO userWriteVO) {
		return sqlSession.selectOne("UserWrite.userWriteNum");
	}
	
	//의뢰인 글 날짜
	public Date userWriteDate(UserWriteVO user) {
		return null;
	}
	public int selectField(UserWriteVO user) {
		
		return sqlSession.selectOne("UserWrite.selectField");
	}
	
	//전체 정보가져오기
	public List<UserWriteVO> selectUserWrite(){
		return sqlSession.selectList("UserWrite.selectUserWrite");
	}
	
	public int countWrite() {
		return sqlSession.selectOne("UserWrite.countWrite");
	}
	
	public int getSeq() {
		return sqlSession.selectOne("UserWrite.getSeq");
	}
	
/*	//게시글 정보 조회
		public BoardDTO selectDetail(int boardNumber) {
			return sqlSession.selectOne("Board.selectDetail", boardNumber);
		}
		
		//게시글 조회수 증가
		public void updateReadCount(int boardNumber) {
			sqlSession.update("Board.updateReadCount", boardNumber);
		}*/
	
	
/*	//게시글 목록
		public List<UserWriteDTO> selectAll(Map<String, Integer> userWriteMap) {
			return sqlSession.selectList("UserWrite.selectAll", userWriteMap);
		}
		
		
		//게시글 전체 개수
		public int getTotal() {
			return sqlSession.selectOne("UserWrite.getTotal");
		}*/
	
	
	
	
	
	
	
	
	
}
