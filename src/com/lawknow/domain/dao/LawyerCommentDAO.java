package com.lawknow.domain.dao;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.lawknow.domain.vo.LawyerCommentVO;
import com.mybatis.config.MyBatisConfig;

public class LawyerCommentDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public LawyerCommentDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	 
	
	//글 목록
	public List<LawyerCommentVO> getCommentList(int lawyer_write_num) {
		return sqlSession.selectList("LawyerComment.commentList", lawyer_write_num);
	}
	
	//변호사 글 작성
	public void commentWrite(LawyerCommentVO lawyerCommentVO) {
		sqlSession.insert("LawyerComment.commentWrite", lawyerCommentVO); 
	}
	
	//변호사 글 불러오기
	public void commentView(LawyerCommentVO lawyerCommentVO) {
		sqlSession.selectOne("LawyerComment.commentView",lawyerCommentVO); 
	}
	
	//변호사 글 수정
	public int commentUpdate(LawyerCommentVO lawyer) {
		return sqlSession.update("Lawyer.commentUpdate", lawyer);
	}
	
	//변호사 글 삭제
	public void commentDelete(LawyerCommentVO lawyer) {
		sqlSession.delete("Lawyer.commentDelete", lawyer);
	}
	
	//변호사 글 번호
	public int lawyerWriteNum(LawyerCommentVO lawyer) {
		return sqlSession.selectOne("Lawyer.lawyerWriteNum") ;
	}
	
	//사건 번호
	public int requestNum(LawyerCommentVO lawyer) {
		return sqlSession.selectOne("Lawyer.requestNum") ;
	}
	
	public Date lawyerWriteDate(LawyerCommentVO lawyer) {
		return null;
	}
	
}
