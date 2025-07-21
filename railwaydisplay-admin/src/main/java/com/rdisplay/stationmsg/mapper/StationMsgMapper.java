package com.rdisplay.stationmsg.mapper;

import java.util.List;
import com.rdisplay.stationmsg.domain.StationMsg;

/**
 * 车站发送人数Mapper接口
 * 
 * @author admin
 * @date 2025-07-10
 */
public interface StationMsgMapper 
{
    /**
     * 查询车站发送人数
     * 
     * @param id 车站发送人数主键
     * @return 车站发送人数
     */
    public StationMsg selectStationMsgById(Integer id);

    /**
     * 查询车站发送人数列表
     * 
     * @param stationMsg 车站发送人数
     * @return 车站发送人数集合
     */
    public List<StationMsg> selectStationMsgList(StationMsg stationMsg);


    /**
     * 新增车站发送人数
     * 
     * @param stationMsg 车站发送人数
     * @return 结果
     */
    public int insertStationMsg(StationMsg stationMsg);

    /**
     * 修改车站发送人数
     * 
     * @param stationMsg 车站发送人数
     * @return 结果
     */
    public int updateStationMsg(StationMsg stationMsg);

    /**
     * 删除车站发送人数
     * 
     * @param id 车站发送人数主键
     * @return 结果
     */
    public int deleteStationMsgById(Integer id);

    /**
     * 批量删除车站发送人数
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteStationMsgByIds(Integer[] ids);
}
