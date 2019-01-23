package wxzw.gamec.controller;

import wxzw.gamec.entity.GameAbstract;
import wxzw.gamec.service.ISearchService;
import wxzw.gamec.service.impl.SearchServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class SearchResult extends HttpServlet {
    private ISearchService iSearchService=new SearchServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //..todo 获取筛选条件

        GameAbstract gameAbstract=new GameAbstract();
        //设置
        //gameAbstract.setKind("RPG");
        //gameAbstract.setPlantForm("FC");

        //获取
        List<GameAbstract> listResult=iSearchService.searchList(gameAbstract);

        //返回

    }
}
