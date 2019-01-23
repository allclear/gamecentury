package wxzw.gamec.service;

import wxzw.gamec.entity.GameAbstract;

import java.util.List;

public interface ISearchService {
    List<GameAbstract> searchList(GameAbstract gameAbstract);
}
