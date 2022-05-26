package com.mybatis.config;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisConfig {
	
	
		private static SqlSessionFactory sqlSessionFactory; // 여기는 초기화가 되어있으니까  null값이 들어가있다
	
	
	
		static { //딱 한번 실행되고 돌려쓰기위해서
			try {
				String resource ="./com/mybatis/config/config.xml"; //경로를 한번 만 접근해서 
				Reader reader = Resources.getResourceAsReader(resource);
				sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
				reader.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		public static SqlSessionFactory getSqlSessionFactory() { //static이니까 1번만 실행되도 
			return sqlSessionFactory;
		}
		
	
}
