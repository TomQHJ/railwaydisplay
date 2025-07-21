package com.rdisplay.railwaytoday.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rdisplay.railwaytoday.mapper.RailwaytodayMapper;
import com.rdisplay.railwaytoday.domain.Railwaytoday;
import com.rdisplay.railwaytoday.service.IRailwaytodayService;

/**
 * 今日车次大屏Service业务层处理
 * 
 * @author admin
 * @date 2025-07-10
 */
@Service
public class RailwaytodayServiceImpl implements IRailwaytodayService 
{
    @Autowired
    private RailwaytodayMapper railwaytodayMapper;

    /**
     * 查询今日车次大屏
     * 
     * @param id 今日车次大屏主键
     * @return 今日车次大屏
     */
    @Override
    public Railwaytoday selectRailwaytodayById(Integer id)
    {
        return railwaytodayMapper.selectRailwaytodayById(id);
    }

    /**
     * 查询今日车次大屏列表
     * 
     * @param railwaytoday 今日车次大屏
     * @return 今日车次大屏
     */
    @Override
    public List<Railwaytoday> selectRailwaytodayList(Railwaytoday railwaytoday)
    {
        return railwaytodayMapper.selectRailwaytodayList(railwaytoday);
    }

    /**
     * 新增今日车次大屏
     * 
     * @param railwaytoday 今日车次大屏
     * @return 结果
     */
    @Override
    public int insertRailwaytoday(Railwaytoday railwaytoday)
    {
        return railwaytodayMapper.insertRailwaytoday(railwaytoday);
    }

    /**
     * 修改今日车次大屏
     * 
     * @param railwaytoday 今日车次大屏
     * @return 结果
     */
    @Override
    public int updateRailwaytoday(Railwaytoday railwaytoday)
    {
        return railwaytodayMapper.updateRailwaytoday(railwaytoday);
    }

    /**
     * 批量删除今日车次大屏
     * 
     * @param ids 需要删除的今日车次大屏主键
     * @return 结果
     */
    @Override
    public int deleteRailwaytodayByIds(Integer[] ids)
    {
        return railwaytodayMapper.deleteRailwaytodayByIds(ids);
    }

    /**
     * 删除今日车次大屏信息
     * 
     * @param id 今日车次大屏主键
     * @return 结果
     */
    @Override
    public int deleteRailwaytodayById(Integer id)
    {
        return railwaytodayMapper.deleteRailwaytodayById(id);
    }
}
