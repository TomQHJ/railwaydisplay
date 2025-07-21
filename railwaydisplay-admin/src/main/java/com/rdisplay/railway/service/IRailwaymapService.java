package com.rdisplay.railway.service;

import java.util.List;
import com.rdisplay.railway.domain.Railwaymap;

/**
 * 列车运行图Service接口
 * 
 * @author admin
 * @date 2025-07-11
 */
public interface IRailwaymapService 
{
    /**
     * 查询列车运行图
     * 
     * @param id 列车运行图主键
     * @return 列车运行图
     */
    public Railwaymap selectRailwaymapById(Integer id);

    /**
     * 查询列车运行图
     *
     * @param trainNum 列车运行图车次号
     * @return 列车运行图
     */
    public Railwaymap selectRailwaymapByTrainNum(String trainNum);

    /**
     * 查询列车运行图列表
     * 
     * @param railwaymap 列车运行图
     * @return 列车运行图集合
     */
    public List<Railwaymap> selectRailwaymapList(Railwaymap railwaymap);

    /**
     * 新增列车运行图
     * 
     * @param railwaymap 列车运行图
     * @return 结果
     */
    public int insertRailwaymap(Railwaymap railwaymap);

    /**
     * 修改列车运行图
     * 
     * @param railwaymap 列车运行图
     * @return 结果
     */
    public int updateRailwaymap(Railwaymap railwaymap);

    /**
     * 批量删除列车运行图
     * 
     * @param ids 需要删除的列车运行图主键集合
     * @return 结果
     */
    public int deleteRailwaymapByIds(Integer[] ids);

    /**
     * 删除列车运行图信息
     * 
     * @param id 列车运行图主键
     * @return 结果
     */
    public int deleteRailwaymapById(Integer id);
}
