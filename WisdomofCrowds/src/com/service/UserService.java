package com.service;

import java.util.List;

import com.bean.User;

public interface UserService {
	User getUesr(int id);

	List<User> getAll();

	void add(User user);

	void delete(int id);

	void update(User user);

	User getUser(String name, String password);

}
