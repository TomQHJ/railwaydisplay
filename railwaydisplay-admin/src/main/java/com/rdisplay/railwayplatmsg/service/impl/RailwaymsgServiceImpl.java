package com.rdisplay.railwayplatmsg.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rdisplay.railwayplatmsg.mapper.RailwaymsgMapper;
import com.rdisplay.railwayplatmsg.domain.Railwaymsg;
import com.rdisplay.railwayplatmsg.service.IRailwaymsgService;

/**
 * 检票口列车信息Service业务层处理
 * 
 * @author admin
 * @date 2025-07-14
 */
@Service
public class RailwaymsgServiceImpl implements IRailwaymsgService 
{
    @Autowired
    private RailwaymsgMapper railwaymsgMapper;

    /**
     * 查询检票口列车信息
     * 
     * @param id 检票口列车信息主键
     * @return 检票口列车信息
     */
    @Override
    public Railwaymsg selectRailwaymsgById(Long id)
    {
        return railwaymsgMapper.selectRailwaymsgById(id);
    }

    /**
     * 查询检票口列车信息列表
     * 
     * @param railwaymsg 检票口列车信息
     * @return 检票口列车信息
     */
    @Override
    public List<Railwaymsg> selectRailwaymsgList(Railwaymsg railwaymsg)
    {
        return railwaymsgMapper.selectRailwaymsgList(railwaymsg);
    }

    /**
     * 新增检票口列车信息
     * 
     * @param railwaymsg 检票口列车信息
     * @return 结果
     */
    @Override
    public int insertRailwaymsg(Railwaymsg railwaymsg)
    {
        return railwaymsgMapper.insertRailwaymsg(railwaymsg);
    }

    /**
     * 修改检票口列车信息
     * 
     * @param railwaymsg 检票口列车信息
     * @return 结果
     */
    @Override
    public int updateRailwaymsg(Railwaymsg railwaymsg)
    {
        return railwaymsgMapper.updateRailwaymsg(railwaymsg);
    }

    /**
     * 批量删除检票口列车信息
     * 
     * @param ids 需要删除的检票口列车信息主键
     * @return 结果
     */
    @Override
    public int deleteRailwaymsgByIds(Long[] ids)
    {
        return railwaymsgMapper.deleteRailwaymsgByIds(ids);
    }

    /**
     * 删除检票口列车信息信息
     * 
     * @param id 检票口列车信息主键
     * @return 结果
     */
    @Override
    public int deleteRailwaymsgById(Long id)
    {
        return railwaymsgMapper.deleteRailwaymsgById(id);
    }
}
