package com.sravs.db;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class DaoFactory
{

    public static void create(Object obj)
    {
        Session session;
        try {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        } catch (org.hibernate.HibernateException he) {
            session = HibernateUtil.getSessionFactory().openSession();
        }
        session.beginTransaction();
        session.save(obj);
        session.getTransaction().commit();
    }


}