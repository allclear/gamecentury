package wxzw.gamec.dao;

import wxzw.gamec.entity.GameAbstract;

import java.util.List;

/**
 * 游戏简介
 */
public interface IGameAbstractDao {
    /**
     * 根据条件筛选
     * @param gameAbstract
     * @return
     */
    List<GameAbstract> selectByGA(GameAbstract gameAbstract);

    List<GameAbstract> selectNew();

    List<GameAbstract> selectHighAssess();

    List<GameAbstract> selectHighHeat();

    List<GameAbstract> selectHighHeatLowAssess();

    List<GameAbstract> findAll();

}
