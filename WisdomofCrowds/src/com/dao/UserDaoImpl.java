package com.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bean.User;

@Repository("userdao")
@Transactional
public class UserDaoImpl extends AbstractDao implements UserDao {

	@Override
	public User getUesr(int id) {
		Criteria criteria = getSession().createCriteria(User.class);
		criteria.add(Restrictions.eq("id", id));
		return (User) criteria.uniqueResult();
	}

	@Override
	public List<User> getAll() {
		Criteria criteria = getSession().createCriteria(User.class);
		return (List<User>) criteria.list();
	}

	@Override
	public void add(User user) {
		persist(user);
	}

	@Override
	public void delete(int id) {
		delete(getUesr(id));

	}

	@Override
	public void update(User user) {
		update(user);
	}

	@Override
	public User getUser(String name, String password) {
		Criteria criteria = getSession().createCriteria(User.class);
		criteria.add(Restrictions.eq("name", name));
		criteria.add(Restrictions.eq("password", password));
		return (User) criteria.uniqueResult();
	}

}
