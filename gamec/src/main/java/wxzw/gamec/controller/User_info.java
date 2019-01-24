package wxzw.gamec.controller;

import wxzw.gamec.dao.IUserDetailDao;
import wxzw.gamec.dao.impl.UserDetailDaoImpl;
import wxzw.gamec.entity.UserDetail;
import wxzw.gamec.service.IUserDetailService;
import wxzw.gamec.service.impl.UserDetailServiceImpl;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


/**
 * Created by DELL on 2019/1/24.
 */
@WebServlet(urlPatterns = "/user_info")
public class User_info extends HttpServlet{
    private IUserDetailDao iUserDetailDao = new UserDetailDaoImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)throws ServletException,IOException {
        req.setCharacterEncoding("utf-8");

//        List<UserDetail> userDetail=iUserDetailDao.findAll();
//        if(null!=userDetail&&userDetail.size()>0){
//            for (UserDetail u:userDetail){
//                System.out.println(u);
//            }
//        }
        //UserDetail userDetail=new UserDetail();
        List<UserDetail> userDetail = iUserDetailDao.findAll();
        userDetail = iUserDetailDao.findAll();
        req.setAttribute("Signture",userDetail);
        req.setAttribute("msgBox",userDetail);
        req.setAttribute("Introduce",userDetail);
        req.getRequestDispatcher("/jsp/user_info.jsp").forward(req,resp);
    }

}

