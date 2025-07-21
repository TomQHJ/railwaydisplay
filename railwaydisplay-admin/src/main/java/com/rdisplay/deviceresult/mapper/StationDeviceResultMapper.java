package com.rdisplay.deviceresult.mapper;

import java.util.List;
import com.rdisplay.deviceresult.domain.StationDeviceResult;

/**
 * 车站设备维修处理状态Mapper接口
 * 
 * @author admin
 * @date 2025-07-14
 */
public interface StationDeviceResultMapper 
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
     * 删除车站设备维修处理状态
     * 
     * @param stationDeviceResultId 车站设备维修处理状态主键
     * @return 结果
     */
    public int deleteStationDeviceResultByStationDeviceResultId(Integer stationDeviceResultId);

    /**
     * 批量删除车站设备维修处理状态
     * 
     * @param stationDeviceResultIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteStationDeviceResultByStationDeviceResultIds(Integer[] stationDeviceResultIds);
}
