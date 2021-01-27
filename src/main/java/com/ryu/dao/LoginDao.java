package com.ryu.dao;

import java.util.List;

import com.ryu.vo.LoginVO;

public interface LoginDao {

	List<LoginVO> list();

	void join(LoginVO vo);

	LoginVO info(int lno);

	void modify(LoginVO vo);

	void delete(int lno);

	int login();







}
