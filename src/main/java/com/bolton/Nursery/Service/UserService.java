package com.bolton.Nursery.Service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bolton.Nursery.Entity.Users;
import com.bolton.Nursery.Repository.UserRepository;

@Service
@Transactional
public class UserService {
	@Autowired
	UserRepository userRepository;

	public void storeUser(Users nUser) {
		userRepository.save(nUser);
	}

	public String validateUser(String uEmail, String uPassword) {
		String uName = null;

		for (Users users : userRepository.findAll()) {
			if (users.getuEmail().equals(uEmail) && users.getuPassword().equals(uPassword)) {
				uName = users.getuName();
			}
		}

		return uName;
	}
}
