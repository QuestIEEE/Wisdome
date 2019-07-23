package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.User;
import com.dao.UserDao;

@Service("userservice")
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao dao;

	@Override
	public User getUesr(int id) {
		return dao.getUesr(id);
	}

	@Override
	public List<User> getAll() {
		return dao.getAll();
	}

	@Override
	public void add(User user) {
		dao.add(user);
	}

	@Override
	public void delete(int id) {
		dao.delete(id);
	}

	@Override
	public void update(User user) {
		dao.update(user);
	}

	@Override
	public User getUser(String name, String password) {
		return dao.getUser(name, password);
	}

}
