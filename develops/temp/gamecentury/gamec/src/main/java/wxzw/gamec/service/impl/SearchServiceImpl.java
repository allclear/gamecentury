package wxzw.gamec.service.impl;

import wxzw.gamec.dao.IGameAbstractDao;
import wxzw.gamec.dao.impl.GameAbstractImpl;
import wxzw.gamec.entity.GameAbstract;
import wxzw.gamec.service.ISearchService;

import java.util.List;

public class SearchServiceImpl implements ISearchService {
    private IGameAbstractDao iGameAbstractDao=new GameAbstractImpl();
    @Override
    public List<GameAbstract> searchList(GameAbstract gameAbstract) {
        return iGameAbstractDao.selectByGA(gameAbstract);
    }
}
