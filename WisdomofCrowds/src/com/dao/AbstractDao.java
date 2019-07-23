package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class AbstractDao {
	@Autowired
	SessionFactory factory;

	public Session getSession() {
		return factory.getCurrentSession();
	}

	public void persist(Object object) {
		getSession().persist(object);
	}

	public void delete(Object object) {
		getSession().delete(object);
	}

	public void update(Object object) {
		getSession().update(object);
	}
}
