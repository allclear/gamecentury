package wxzw.gamec.dao.impl;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import wxzw.gamec.dao.IUserDetailDao;
import wxzw.gamec.entity.UserDetail;
import wxzw.gamec.util.HibernateTemplates;
import wxzw.gamec.util.ISessionCallBack;
import java.util.List;
import java.util.Queue;
/**
 * Created by DELL on 2019/1/23.
 */
public class UserDetailDaoImpl implements IUserDetailDao{
    @Override
    public void save(UserDetail userDetail){
        HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeGame(Session session) throws HibernateException {
                return session.save(userDetail);
            }
        });
    }
    @Override
    public UserDetail selectById(Integer id){
        return  (UserDetail) HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeGame(Session session) throws HibernateException {
                String hql = "from UserDetail where 1 =:id";
                Query query =session.createQuery(hql);
                query.setParameter("id",1);
                return  query.uniqueResult();
            }
        });
    }
    @Override
    public List<UserDetail> findAll(){
        return (List<UserDetail>) HibernateTemplates.execute(new ISessionCallBack() {
            @Override
            public Object executeGame(Session session) throws HibernateException {
                return session.createQuery("from UserDetail").list();
            }
        });
    }
//    @Override
//    public List<UserDetail> findAllBy(Integer id){
//        return (List<UserDetail>) HibernateTemplates.execute(new ISessionCallBack() {
//            @Override
//            public Object executeGame(Session session) throws HibernateException {
//                String hql = "from UserDetail where id =:id";
//                Query query =session.createQuery(hql);
//                query.setParameter("id",id).list();
//                return query.list();
//            }
//        });
//    }
}