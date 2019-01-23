package wxzw.gamec.service.impl;

import wxzw.gamec.dao.IGameAbstractDao;
import wxzw.gamec.dao.impl.GameAbstractImpl;
import wxzw.gamec.entity.GameAbstract;
import wxzw.gamec.service.IIndexService;

import java.util.ArrayList;
import java.util.List;

public class IndexServiceImpl implements IIndexService {
    private IGameAbstractDao iGameAbstractDao=new GameAbstractImpl();
    @Override
    public List<GameAbstract> rankList() {
        GameAbstract gameAbstract=new GameAbstract();
        List<GameAbstract> list=iGameAbstractDao.selectByGA(gameAbstract);
        List<GameAbstract> rl=new ArrayList<>();
        int i=0;
        for(GameAbstract t:list){
            if(i>=20){
                break;
            }
            rl.add(t);
            i++;
        }

        return rl;
    }
}
