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


	@Override
	public LoginVO info(int lno) {
		
		return sql.selectOne(namespace+".info",lno);
	}


	@Override
	public void modify(LoginVO vo) {
		
		sql.update(namespace+".update",vo);
	}


	@Override
	public void delete(int lno) {
		
		sql.delete(namespace+".delete",lno);
	}


	@Override
	public int login(LoginVO vo) {
		
		return sql.selectOne(namespace+".login",vo);
	}





}
