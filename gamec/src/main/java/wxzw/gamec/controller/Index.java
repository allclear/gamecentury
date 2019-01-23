package wxzw.gamec.controller;

import wxzw.gamec.service.IIndexService;
import wxzw.gamec.service.INavigationService;
import wxzw.gamec.service.impl.IndexServiceImpl;
import wxzw.gamec.service.impl.NavigationServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/index")
public class Index extends HttpServlet {
    private IIndexService iIndexService=new IndexServiceImpl();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.err.println("index");
        req.setAttribute("rankList",iIndexService.rankList());
        req.getRequestDispatcher("/jsp/index.jsp").forward(req,resp);
    }
}
