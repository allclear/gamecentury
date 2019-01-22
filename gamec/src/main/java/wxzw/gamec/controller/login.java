package wxzw.gamec.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/user/login")
public class login extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.err.println("login...");
        String username=req.getParameter("username");
        String pwd=req.getParameter("password");

        PrintWriter printWriter=resp.getWriter();
        if(username.equals("admin")&&pwd.equals("admin")){
            printWriter.print(1);
        }
        else {
            printWriter.print(0);
        }

    }
}
