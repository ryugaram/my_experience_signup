package com.ryu.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ryu.vo.LoginVO;

@Repository
public class LoginDaoImpl implements LoginDao {

	@Inject
	private SqlSession sql;
	
	private static String namespace= "com.ryu.mappers.login";
	
	
	@Override
	public List<LoginVO> list() {
	
	 return sql.selectList(namespace+".list");
	}


	@Override
	public void join(LoginVO vo) {
		
		sql.insert(namespace+".join",vo);
	}


}
