package wxzw.gamec.service;

import wxzw.gamec.entity.GameAbstract;

import java.util.List;

public interface IIndexService {
    List<GameAbstract> rankList();

    List<GameAbstract> newCreate(Integer x);

    List<GameAbstract> newHighHeat(Integer x);

    List<GameAbstract> lowAccessHighHeat(Integer x);
}
