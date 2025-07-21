package com.rdisplay.stationmsg.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rdisplay.stationmsg.mapper.StationMsgMapper;
import com.rdisplay.stationmsg.domain.StationMsg;
import com.rdisplay.stationmsg.service.IStationMsgService;

/**
 * 车站发送人数Service业务层处理
 * 
 * @author admin
 * @date 2025-07-10
 */
@Service
public class StationMsgServiceImpl implements IStationMsgService 
{
    @Autowired
    private StationMsgMapper stationMsgMapper;

    /**
     * 查询车站发送人数
     * 
     * @param id 车站发送人数主键
     * @return 车站发送人数
     */
    @Override
    public StationMsg selectStationMsgById(Integer id)
    {
        return stationMsgMapper.selectStationMsgById(id);
    }


    /**
     * 查询车站发送人数列表
     * 
     * @param stationMsg 车站发送人数
     * @return 车站发送人数
     */
    @Override
    public List<StationMsg> selectStationMsgList(StationMsg stationMsg)
    {
        return stationMsgMapper.selectStationMsgList(stationMsg);
    }

    /**
     * 新增车站发送人数
     * 
     * @param stationMsg 车站发送人数
     * @return 结果
     */
    @Override
    public int insertStationMsg(StationMsg stationMsg)
    {
        return stationMsgMapper.insertStationMsg(stationMsg);
    }

    /**
     * 修改车站发送人数
     * 
     * @param stationMsg 车站发送人数
     * @return 结果
     */
    @Override
    public int updateStationMsg(StationMsg stationMsg)
    {
        return stationMsgMapper.updateStationMsg(stationMsg);
    }

    /**
     * 批量删除车站发送人数
     * 
     * @param ids 需要删除的车站发送人数主键
     * @return 结果
     */
    @Override
    public int deleteStationMsgByIds(Integer[] ids)
    {
        return stationMsgMapper.deleteStationMsgByIds(ids);
    }

    /**
     * 删除车站发送人数信息
     * 
     * @param id 车站发送人数主键
     * @return 结果
     */
    @Override
    public int deleteStationMsgById(Integer id)
    {
        return stationMsgMapper.deleteStationMsgById(id);
    }
}
