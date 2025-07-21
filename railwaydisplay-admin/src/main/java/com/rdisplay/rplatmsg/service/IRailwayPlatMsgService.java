package com.rdisplay.rplatmsg.service;

import java.util.List;
import com.rdisplay.rplatmsg.domain.RailwayPlatMsg;

/**
 * 站台信息Service接口
 * 
 * @author ruoyi
 * @date 2025-07-09
 */
public interface IRailwayPlatMsgService 
{
    /**
     * 查询站台信息
     * 
     * @param platNum 站台信息主键
     * @return 站台信息
     */
    public RailwayPlatMsg selectRailwayPlatMsgByPlatNum(Long platNum);

    /**
     * 查询站台信息列表
     * 
     * @param railwayPlatMsg 站台信息
     * @return 站台信息集合
     */
    public List<RailwayPlatMsg> selectRailwayPlatMsgList(RailwayPlatMsg railwayPlatMsg);

    /**
     * 新增站台信息
     * 
     * @param railwayPlatMsg 站台信息
     * @return 结果
     */
    public int insertRailwayPlatMsg(RailwayPlatMsg railwayPlatMsg);

    /**
     * 修改站台信息
     * 
     * @param railwayPlatMsg 站台信息
     * @return 结果
     */
    public int updateRailwayPlatMsg(RailwayPlatMsg railwayPlatMsg);

    /**
     * 批量删除站台信息
     * 
     * @param platNums 需要删除的站台信息主键集合
     * @return 结果
     */
    public int deleteRailwayPlatMsgByPlatNums(Long[] platNums);

    /**
     * 删除站台信息信息
     * 
     * @param platNum 站台信息主键
     * @return 结果
     */
    public int deleteRailwayPlatMsgByPlatNum(Long platNum);
}
