package com.ryu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ryu.dao.LoginDao;
import com.ryu.vo.LoginVO;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired LoginDao dao;


	@Override
	public List<LoginVO> list() {
		
		return dao.list();
	}


	@Override
	public void join(LoginVO vo) {
		
		dao.join(vo);
	}


	@Override
	public LoginVO info(int lno) {
		
		return dao.info(lno);
	}


	@Override
	public void modify(LoginVO vo) {
		
		dao.modify(vo);
	}


	@Override
	public void delete(int lno) {
		
		dao.delete(lno);
	}


	@Override
	public int login(LoginVO vo) {
		
		return dao.login(vo);
	}






	



}
