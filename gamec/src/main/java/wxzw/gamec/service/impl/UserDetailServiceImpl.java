package wxzw.gamec.service.impl;

import wxzw.gamec.dao.IUserDetailDao;
import wxzw.gamec.dao.impl.UserDetailDaoImpl;
import wxzw.gamec.entity.UserDetail;
import wxzw.gamec.service.IUserDetailService;

import java.util.List;

/**
 * Created by DELL on 2019/1/23.
 */
public class UserDetailServiceImpl implements IUserDetailService {
    private IUserDetailDao userDetailDao = new UserDetailDaoImpl();
    @Override
    public List<UserDetail> findAll(){
        return userDetailDao.findAll();
    }
}
