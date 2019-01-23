package wxzw.gamec.controller;

import wxzw.gamec.entity.User;
import wxzw.gamec.service.INavigationService;
import wxzw.gamec.service.impl.NavigationServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/user/login")
public class Login extends HttpServlet {
    private INavigationService iNavigationService=new NavigationServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.err.println("login...");
        String username=req.getParameter("username");
        String pwd=req.getParameter("password");

        User u=new User(username,pwd);
        int loginResult=iNavigationService.Login(u);

        if(1==loginResult){
            User user=new User();
            user.setUserName(username);
            req.getSession().setAttribute("user",user);
        }
        resp.getWriter().print(loginResult);
    }
}
