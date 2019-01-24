package wxzw.gamec.service;

import wxzw.gamec.entity.UserDetail;

import java.util.List;

/**
 * Created by DELL on 2019/1/23.
 */
public interface IUserDetailService {
    List<UserDetail>findAll();
}
