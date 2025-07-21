package com.rdisplay.railwayplatmsg.mapper;

import java.util.List;
import com.rdisplay.railwayplatmsg.domain.Railwaymsg;

/**
 * 检票口列车信息Mapper接口
 * 
 * @author admin
 * @date 2025-07-14
 */
public interface RailwaymsgMapper 
{
    /**
     * 查询检票口列车信息
     * 
     * @param id 检票口列车信息主键
     * @return 检票口列车信息
     */
    public Railwaymsg selectRailwaymsgById(Long id);

    /**
     * 查询检票口列车信息列表
     * 
     * @param railwaymsg 检票口列车信息
     * @return 检票口列车信息集合
     */
    public List<Railwaymsg> selectRailwaymsgList(Railwaymsg railwaymsg);

    /**
     * 新增检票口列车信息
     * 
     * @param railwaymsg 检票口列车信息
     * @return 结果
     */
    public int insertRailwaymsg(Railwaymsg railwaymsg);

    /**
     * 修改检票口列车信息
     * 
     * @param railwaymsg 检票口列车信息
     * @return 结果
     */
    public int updateRailwaymsg(Railwaymsg railwaymsg);

    /**
     * 删除检票口列车信息
     * 
     * @param id 检票口列车信息主键
     * @return 结果
     */
    public int deleteRailwaymsgById(Long id);

    /**
     * 批量删除检票口列车信息
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteRailwaymsgByIds(Long[] ids);
}
