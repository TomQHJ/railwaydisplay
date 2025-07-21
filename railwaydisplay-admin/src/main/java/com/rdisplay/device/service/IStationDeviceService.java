package com.rdisplay.device.service;

import java.util.List;
import com.rdisplay.device.domain.StationDevice;

/**
 * 车站设备Service接口
 * 
 * @author admin
 * @date 2025-07-11
 */
public interface IStationDeviceService 
{
    /**
     * 查询车站设备
     * 
     * @param deviceId 车站设备主键
     * @return 车站设备
     */
    public StationDevice selectStationDeviceByDeviceId(Integer deviceId);

    /**
     * 查询车站设备列表
     * 
     * @param stationDevice 车站设备
     * @return 车站设备集合
     */
    public List<StationDevice> selectStationDeviceList(StationDevice stationDevice);

    /**
     * 新增车站设备
     * 
     * @param stationDevice 车站设备
     * @return 结果
     */
    public int insertStationDevice(StationDevice stationDevice);

    /**
     * 修改车站设备
     * 
     * @param stationDevice 车站设备
     * @return 结果
     */
    public int updateStationDevice(StationDevice stationDevice);

    /**
     * 批量删除车站设备
     * 
     * @param deviceIds 需要删除的车站设备主键集合
     * @return 结果
     */
    public int deleteStationDeviceByDeviceIds(Integer[] deviceIds);

    /**
     * 删除车站设备信息
     * 
     * @param deviceId 车站设备主键
     * @return 结果
     */
    public int deleteStationDeviceByDeviceId(Integer deviceId);
}
