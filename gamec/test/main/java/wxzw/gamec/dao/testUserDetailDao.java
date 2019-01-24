package wxzw.gamec.dao;

import org.junit.Test;
import wxzw.gamec.dao.impl.UserDetailDaoImpl;
import wxzw.gamec.entity.User;
import wxzw.gamec.entity.UserDetail;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 2019/1/23.
 */
public class testUserDetailDao {
    private IUserDetailDao iUserDetailDao = new UserDetailDaoImpl();
    @Test
    public void testSave(){
        UserDetail u1 = new UserDetail("我是好人","啦啦啦啦啦啦","zbp is pig");
        iUserDetailDao.save(u1);
    }
//    @Test
//    public void testFindAll(){
//        List<UserDetail> userDetails = iUserDetailDao.findAllBy(1);
//        for (UserDetail u:userDetails){
//            System.out.println(u);
//        }
//    }

//    @Test
//    public void tall(){
//        List<UserDetail> userDetails=iUserDetailDao.findAllBy(2);
//        System.err.println(userDetails);
//    }
    @Test
    public void all(){
        List<UserDetail> userDetail=iUserDetailDao.findAll();
        if(null!=userDetail&&userDetail.size()>0){
            for (UserDetail u:userDetail){
                System.out.println(u);
            }
        }
    }
}
