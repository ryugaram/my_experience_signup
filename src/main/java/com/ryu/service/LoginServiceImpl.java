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



}
