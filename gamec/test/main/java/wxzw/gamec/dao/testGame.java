package wxzw.gamec.dao;

import org.junit.Test;
import wxzw.gamec.dao.impl.GameAbstractImpl;
import wxzw.gamec.dao.impl.GameDetailImpl;
import wxzw.gamec.entity.GameAbstract;
import wxzw.gamec.entity.GameDetail;

import java.util.List;

public class testGame {
    private IGameDetailDao igameDetailDao=new GameDetailImpl();
    private IGameAbstractDao igameAbstractDao=new GameAbstractImpl();
    @Test
    public void save(){
        GameDetail gameDetail=new GameDetail();
        gameDetail.setGameName("重装机兵3");
        gameDetail.setPlantForm("NDS");
        gameDetail.setKind("RPG");
        gameDetail.setDescribe("科幻末世风格的22222...");
        gameDetail.setCoverImg("/img/zzz.jpg");
        igameDetailDao.save(gameDetail);
    }
    @Test
    public void dall(){
        List<GameDetail> gameDetails=igameDetailDao.findAll();
        System.err.println(gameDetails);
    }
    @Test
    public void all(){
        List<GameAbstract> gameAbstractList=igameAbstractDao.findAll();
        System.err.println(gameAbstractList);
    }
    @Test
    public void select(){
        GameAbstract gameAbstract=new GameAbstract();
     //   gameAbstract.setId(7);
      //  gameAbstract.setGameName("重装机兵");
     //   gameAbstract.setPlantForm("FC");
        gameAbstract.setKind("RPG");

        List<GameAbstract> gameAbstractList=igameAbstractDao.selectByGA(gameAbstract);
        System.err.println(gameAbstractList);
    }
}
