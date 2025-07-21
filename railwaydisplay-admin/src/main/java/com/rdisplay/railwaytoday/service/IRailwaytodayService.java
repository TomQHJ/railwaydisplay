package com.rdisplay.railwaytoday.service;

import java.util.List;
import com.rdisplay.railwaytoday.domain.Railwaytoday;

/**
 * 今日车次大屏Service接口
 * 
 * @author admin
 * @date 2025-07-10
 */
public interface IRailwaytodayService 
{
    /**
     * 查询今日车次大屏
     * 
     * @param id 今日车次大屏主键
     * @return 今日车次大屏
     */
    public Railwaytoday selectRailwaytodayById(Integer id);

    /**
     * 查询今日车次大屏列表
     * 
     * @param railwaytoday 今日车次大屏
     * @return 今日车次大屏集合
     */
    public List<Railwaytoday> selectRailwaytodayList(Railwaytoday railwaytoday);

    /**
     * 新增今日车次大屏
     * 
     * @param railwaytoday 今日车次大屏
     * @return 结果
     */
    public int insertRailwaytoday(Railwaytoday railwaytoday);

    /**
     * 修改今日车次大屏
     * 
     * @param railwaytoday 今日车次大屏
     * @return 结果
     */
    public int updateRailwaytoday(Railwaytoday railwaytoday);

    /**
     * 批量删除今日车次大屏
     * 
     * @param ids 需要删除的今日车次大屏主键集合
     * @return 结果
     */
    public int deleteRailwaytodayByIds(Integer[] ids);

    /**
     * 删除今日车次大屏信息
     * 
     * @param id 今日车次大屏主键
     * @return 结果
     */
    public int deleteRailwaytodayById(Integer id);
}
