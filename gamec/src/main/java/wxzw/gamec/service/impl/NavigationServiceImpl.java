package wxzw.gamec.service.impl;

import wxzw.gamec.dao.IUserDao;
import wxzw.gamec.dao.impl.UserDaoImpl;
import wxzw.gamec.entity.User;
import wxzw.gamec.service.INavigationService;

public class NavigationServiceImpl implements INavigationService {
    private IUserDao iUserDao=new UserDaoImpl();
    @Override
    public int Login(User user) {
        System.err.println(user);
        if(null==user){
            return -1;
        }
        User u=iUserDao.selectByUserName(user.getUserName());
        System.err.println(u);
        if(null==u){
            return -1;
        }
        else{
            if(u.getPassWord().equals(user.getPassWord())){
                return 1;
            }
            else {
                return 0;
            }
        }
    }
}
