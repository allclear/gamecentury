package wxzw.gamec.dao.impl;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import wxzw.gamec.dao.IUserDao;
import wxzw.gamec.entity.User;
import wxzw.gamec.util.HibernateTemplates;
import wxzw.gamec.util.HibernateUtil;
import wxzw.gamec.util.ISessionCallBack;

import java.util.List;

public class UserDaoImpl implements IUserDao {
    @Override
    public void save(User user) {
        HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeGame(Session session) throws HibernateException {
                return session.save(user);
            }
        });
    }

    @Override
    public User selectByUserName(String username) {
        return (User) HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeGame(Session session) throws HibernateException {
                String hql="from User where userName =:username";
                Query query=session.createQuery(hql);
                query.setParameter("username",username);
                return query.uniqueResult();
            }
        });
    }

    @Override
    public List<User> findAll() {
        return (List<User>) HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeGame(Session session) throws HibernateException {
                return session.createQuery("from User").list();
            }
        });
    }

    @Override
    public List<User> findAllBy(String user) {
        return (List<User>) HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeGame(Session session) throws HibernateException {
                String hql="from User where userName =:username";
                Query query=session.createQuery(hql);
                query.setParameter("username",user);
                return query.list();
            }
        });
    }
}
