package com.rdisplay.deviceresult.service;

import java.util.List;
import com.rdisplay.deviceresult.domain.StationDeviceResult;

/**
 * 车站设备维修处理状态Service接口
 * 
 * @author admin
 * @date 2025-07-14
 */
public interface IStationDeviceResultService 
{
    /**
     * 查询车站设备维修处理状态
     * 
     * @param stationDeviceResultId 车站设备维修处理状态主键
     * @return 车站设备维修处理状态
     */
    public StationDeviceResult selectStationDeviceResultByStationDeviceResultId(Integer stationDeviceResultId);

    /**
     * 查询车站设备维修处理状态列表
     * 
     * @param stationDeviceResult 车站设备维修处理状态
     * @return 车站设备维修处理状态集合
     */
    public List<StationDeviceResult> selectStationDeviceResultList(StationDeviceResult stationDeviceResult);

    /**
     * 新增车站设备维修处理状态
     * 
     * @param stationDeviceResult 车站设备维修处理状态
     * @return 结果
     */
    public int insertStationDeviceResult(StationDeviceResult stationDeviceResult);

    /**
     * 修改车站设备维修处理状态
     * 
     * @param stationDeviceResult 车站设备维修处理状态
     * @return 结果
     */
    public int updateStationDeviceResult(StationDeviceResult stationDeviceResult);

    /**
     * 批量删除车站设备维修处理状态
     * 
     * @param stationDeviceResultIds 需要删除的车站设备维修处理状态主键集合
     * @return 结果
     */
    public int deleteStationDeviceResultByStationDeviceResultIds(Integer[] stationDeviceResultIds);

    /**
     * 删除车站设备维修处理状态信息
     * 
     * @param stationDeviceResultId 车站设备维修处理状态主键
     * @return 结果
     */
    public int deleteStationDeviceResultByStationDeviceResultId(Integer stationDeviceResultId);
}
