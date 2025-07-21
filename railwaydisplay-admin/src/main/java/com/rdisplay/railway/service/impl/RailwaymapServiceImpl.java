package com.rdisplay.railway.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rdisplay.railway.mapper.RailwaymapMapper;
import com.rdisplay.railway.domain.Railwaymap;
import com.rdisplay.railway.service.IRailwaymapService;

/**
 * 列车运行图Service业务层处理
 * 
 * @author admin
 * @date 2025-07-11
 */
@Service
public class RailwaymapServiceImpl implements IRailwaymapService 
{
    @Autowired
    private RailwaymapMapper railwaymapMapper;

    /**
     * 查询列车运行图
     * 
     * @param id 列车运行图主键
     * @return 列车运行图
     */
    @Override
    public Railwaymap selectRailwaymapById(Integer id)
    {
        return railwaymapMapper.selectRailwaymapById(id);
    }

    /**
     * 查询列车运行图
     *
     * @param trainNum 列车运行图车次号
     * @return 列车运行图
     */
    @Override
    public Railwaymap selectRailwaymapByTrainNum(String trainNum)
    {
        return railwaymapMapper.selectRailwaymapByTrainNum(trainNum);
    }

    /**
     * 查询列车运行图列表
     * 
     * @param railwaymap 列车运行图
     * @return 列车运行图
     */
    @Override
    public List<Railwaymap> selectRailwaymapList(Railwaymap railwaymap)
    {
        return railwaymapMapper.selectRailwaymapList(railwaymap);
    }

    /**
     * 新增列车运行图
     * 
     * @param railwaymap 列车运行图
     * @return 结果
     */
    @Override
    public int insertRailwaymap(Railwaymap railwaymap)
    {
        return railwaymapMapper.insertRailwaymap(railwaymap);
    }

    /**
     * 修改列车运行图
     * 
     * @param railwaymap 列车运行图
     * @return 结果
     */
    @Override
    public int updateRailwaymap(Railwaymap railwaymap)
    {
        return railwaymapMapper.updateRailwaymap(railwaymap);
    }

    /**
     * 批量删除列车运行图
     * 
     * @param ids 需要删除的列车运行图主键
     * @return 结果
     */
    @Override
    public int deleteRailwaymapByIds(Integer[] ids)
    {
        return railwaymapMapper.deleteRailwaymapByIds(ids);
    }

    /**
     * 删除列车运行图信息
     * 
     * @param id 列车运行图主键
     * @return 结果
     */
    @Override
    public int deleteRailwaymapById(Integer id)
    {
        return railwaymapMapper.deleteRailwaymapById(id);
    }
}
