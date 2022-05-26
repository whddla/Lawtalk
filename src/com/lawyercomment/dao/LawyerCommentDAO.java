package com.lawyercomment.dao;

import java.sql.Date;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.lawyer.domain.vo.LawyerVO;
import com.lawyercomment.domain.vo.LawyerCommentVO;
import com.mybatis.config.MyBatisConfig;

public class LawyerCommentDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public LawyerCommentDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//변호사 글 번호
	public int lawyerWirteNum(LawyerCommentVO lawyerVO) {
		return 0;
	}
	
	//사건 번호
	public int requestNum(LawyerCommentVO lawyerVO) {
		return 0;
	}
	
	public Date lawyerWriteDate(LawyerCommentVO lawyerVO) {
		return null;
	}
	
}
