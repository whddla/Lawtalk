package com.lawknow.domain.dao;

import java.util.Enumeration;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.lawknow.domain.vo.FileVO;
import com.mybatis.config.MyBatisConfig;
import com.oreilly.servlet.MultipartRequest;
////
public class FileDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public FileDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	public void insert(MultipartRequest multipartRequest, int userWriteNum) {
		FileVO file = new FileVO();
		//type="file"인 태그의 name 값들
		Enumeration<String> files = multipartRequest.getFileNames();//그냥 SET이라고 생각하면돼 하지만 가져올수있는데 NEXT로가져오는 친구
		
		while(files.hasMoreElements()) {//더이상 가져올게 없으면 FALSE로 바뀐다
			String name = files.nextElement();// files는 사용자가 담아놓은 파일의 네임값
			//원본 파일 이름
			String fileNameOriginal = multipartRequest.getOriginalFileName(name); //얘가 원본 이름
			//중복 시 변경되는 이름
			String fileName = multipartRequest.getFilesystemName(name);// 얘는 중복이 됐을때 변경되는 이름
			
			if(fileName == null) {continue;} // 만약에 가져온 중복시 이름이 null이라면 다시 올라가라
			
			file.setFileName(fileName);
			file.setFileNameOriginal(fileNameOriginal);
			file.setUserWriteNum(userWriteNum);
			
			insert(file);
		}
	}
	
	public void insert(FileVO fileVO) {
		sqlSession.insert("File.insert", fileVO);
	}
	
	public void delete(int userWriteNum) {
		sqlSession.delete("File.delete", userWriteNum);
	}
	
	public List<FileVO> select(int userWriteNum){
		return sqlSession.selectList("File.select", userWriteNum);
	}
}
