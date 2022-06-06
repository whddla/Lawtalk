package com.lawknow.domain.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.lawknow.domain.vo.LawyerCommentDTO;
import com.lawknow.domain.vo.LawyerCommentVO;
import com.mybatis.config.MyBatisConfig;
//
public class LawyerCommentDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public LawyerCommentDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	 
	
	//글 목록
	public List<LawyerCommentVO> getCommentList(String lawyerName) {
		return sqlSession.selectList("LawyerComment.commentList", lawyerName);
	}
	
	//변호사 글 작성
	public void commentWrite(LawyerCommentVO lawyerCommentVO) {
		sqlSession.insert("LawyerComment.commentWrite", lawyerCommentVO); 
	}
	
	//변호사 글 삭제
	public void commentDelete(int lawyerWriteNum) {
		sqlSession.delete("Lawyer.commentDelete", lawyerWriteNum);
	}
	
	//변호사 글 수정
	public void commentUpdate(LawyerCommentVO lawyerCommentVO) {
		sqlSession.update("Lawyer.commentUpdate", lawyerCommentVO);
	}
	
}
