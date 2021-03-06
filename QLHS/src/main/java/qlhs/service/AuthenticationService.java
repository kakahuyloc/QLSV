package qlhs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import qlhs.aop.SercurityAop;
import qlhs.model.Account;
import qlhs.repository.AccountProcudureRepository;

@Service
public class AuthenticationService {
	
	@Autowired
	AccountProcudureRepository accountProcudureRepository;
	
	public Account checkLogin(String taikhoan, String password) {
		boolean loginStatus = SercurityAop.LOGIN_STATUS;
		Account acc = SercurityAop.account;
		return acc;
	}

}
