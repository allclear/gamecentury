package wxzw.gamec.dao;

import wxzw.gamec.entity.User;

import java.util.List;

public interface IUserDao {
    void save(User user);
    List<User> findAll();
}
