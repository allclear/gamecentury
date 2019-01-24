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
        List<GameAbstract> list=iGameAbstractDao.selectHighAssess();
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

    @Override
    public List<GameAbstract> newCreate(Integer x) {
        List<GameAbstract> abstractList=iGameAbstractDao.selectNew();
        List<GameAbstract> resultList=new ArrayList<>();

        int i=0;
        for(GameAbstract ga:abstractList){
            if(i>=8){
                break;
            }
            resultList.add(ga);
            i++;
        }

        System.out.println(resultList);

        return resultList;
    }

    @Override
    public List<GameAbstract> newHighHeat(Integer x) {
        List<GameAbstract> abstractList=iGameAbstractDao.selectHighHeat();
        List<GameAbstract> resultList=new ArrayList<>();

        int i=0;
        for(GameAbstract ga:abstractList){
            if(i>=8){
                break;
            }
            resultList.add(ga);
            i++;
        }

        System.out.println(resultList);

        return resultList;
    }

    @Override
    public List<GameAbstract> lowAccessHighHeat(Integer x) {
        List<GameAbstract> abstractList=iGameAbstractDao.selectHighHeatLowAssess();
        List<GameAbstract> resultList=new ArrayList<>();
        int i=0;
        for(GameAbstract ga:abstractList){
            if(i>=8){
                break;
            }
            resultList.add(ga);
            i++;
        }

        System.out.println(resultList);

        return resultList;
    }


}
