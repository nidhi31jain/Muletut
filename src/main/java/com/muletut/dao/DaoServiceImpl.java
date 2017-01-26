package com.muletut.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.muletut.entity.Tutorial;
import com.muletut.exceptions.MuletutException;

@Service("daoService")
public class DaoServiceImpl implements DaoService {
	@Autowired
	SessionFactory sessionFactory;

	public boolean addMenuItems(String[] menuItemsNames) throws MuletutException {
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			Query sizeQuery = session.createQuery("SELECT COUNT(*) FROM Tutorial T");
			Long dataSize = (Long) (sizeQuery.uniqueResult());
			System.out.println(dataSize + " " + menuItemsNames.length);
			if (dataSize != menuItemsNames.length) {
				session.createQuery("DELETE FROM Tutorial").executeUpdate();
				for (int i = 0; i < menuItemsNames.length; i++) {
					Tutorial object = new Tutorial();
					object.setName(menuItemsNames[i]);
					session.save(object);
					if (i % 20 == 0) {
						session.flush();
						session.clear();
					}
				}
				transaction.commit();
			}
			return true;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			throw new MuletutException("Can't connect with database", e);

		} finally {
			session.close();
		}
	}

	public ArrayList<String> getMenu() throws MuletutException {
		Session session = null;
		Transaction transaction = null;
		try {

			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			Query itemQuery = session.createQuery("SELECT T.name FROM Tutorial T");
			@SuppressWarnings("unchecked")
			List<String> items = itemQuery.list();
			transaction.commit();
			return (ArrayList<String>) items;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			throw new MuletutException("Can't connect with database", e);

		} finally {
			session.close();
		}
	}

}
