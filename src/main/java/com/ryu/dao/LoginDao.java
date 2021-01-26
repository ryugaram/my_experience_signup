package com.ryu.dao;

import java.util.List;

import com.ryu.vo.LoginVO;

public interface LoginDao {

	List<LoginVO> list();

	void join(LoginVO vo);





}
