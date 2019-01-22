package wxzw.gamec.dao;

import org.junit.Test;
import wxzw.gamec.dao.impl.UserDaoImpl;
import wxzw.gamec.entity.User;

import java.util.List;

public class testUserDao {
    private IUserDao iUserDao=new UserDaoImpl();

    @Test
    public void save(){
        User user=new User("www","123");

        iUserDao.save(user);
    }

    @Test
    public void all(){
        List<User> userList=iUserDao.findAll();
        if(null!=userList&&userList.size()>0){
            for(User user:userList){
                System.out.println(user);
            }
        }
    }

    @Test
    public void tsave(){

    }
}
