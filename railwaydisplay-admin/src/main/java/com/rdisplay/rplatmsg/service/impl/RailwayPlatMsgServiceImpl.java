package com.rdisplay.rplatmsg.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rdisplay.rplatmsg.mapper.RailwayPlatMsgMapper;
import com.rdisplay.rplatmsg.domain.RailwayPlatMsg;
import com.rdisplay.rplatmsg.service.IRailwayPlatMsgService;

/**
 * 站台信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-07-09
 */
@Service
public class RailwayPlatMsgServiceImpl implements IRailwayPlatMsgService 
{
    @Autowired
    private RailwayPlatMsgMapper railwayPlatMsgMapper;

    /**
     * 查询站台信息
     * 
     * @param platNum 站台信息主键
     * @return 站台信息
     */
    @Override
    public RailwayPlatMsg selectRailwayPlatMsgByPlatNum(Long platNum)
    {
        return railwayPlatMsgMapper.selectRailwayPlatMsgByPlatNum(platNum);
    }

    /**
     * 查询站台信息列表
     * 
     * @param railwayPlatMsg 站台信息
     * @return 站台信息
     */
    @Override
    public List<RailwayPlatMsg> selectRailwayPlatMsgList(RailwayPlatMsg railwayPlatMsg)
    {
        return railwayPlatMsgMapper.selectRailwayPlatMsgList(railwayPlatMsg);
    }

    /**
     * 新增站台信息
     * 
     * @param railwayPlatMsg 站台信息
     * @return 结果
     */
    @Override
    public int insertRailwayPlatMsg(RailwayPlatMsg railwayPlatMsg)
    {
        return railwayPlatMsgMapper.insertRailwayPlatMsg(railwayPlatMsg);
    }

    /**
     * 修改站台信息
     * 
     * @param railwayPlatMsg 站台信息
     * @return 结果
     */
    @Override
    public int updateRailwayPlatMsg(RailwayPlatMsg railwayPlatMsg)
    {
        return railwayPlatMsgMapper.updateRailwayPlatMsg(railwayPlatMsg);
    }

    /**
     * 批量删除站台信息
     * 
     * @param platNums 需要删除的站台信息主键
     * @return 结果
     */
    @Override
    public int deleteRailwayPlatMsgByPlatNums(Long[] platNums)
    {
        return railwayPlatMsgMapper.deleteRailwayPlatMsgByPlatNums(platNums);
    }

    /**
     * 删除站台信息信息
     * 
     * @param platNum 站台信息主键
     * @return 结果
     */
    @Override
    public int deleteRailwayPlatMsgByPlatNum(Long platNum)
    {
        return railwayPlatMsgMapper.deleteRailwayPlatMsgByPlatNum(platNum);
    }
}
