package com.rdisplay.DeviceType.service;

import java.util.List;
import com.rdisplay.DeviceType.domain.StationDeviceType;

/**
 * 设备类型字段Service接口
 * 
 * @author admin
 * @date 2025-07-14
 */
public interface IStationDeviceTypeService 
{
    /**
     * 查询设备类型字段
     * 
     * @param stationDeviceId 设备类型字段主键
     * @return 设备类型字段
     */
    public StationDeviceType selectStationDeviceTypeByStationDeviceId(Integer stationDeviceId);

    /**
     * 查询设备类型字段列表
     * 
     * @param stationDeviceType 设备类型字段
     * @return 设备类型字段集合
     */
    public List<StationDeviceType> selectStationDeviceTypeList(StationDeviceType stationDeviceType);

    /**
     * 新增设备类型字段
     * 
     * @param stationDeviceType 设备类型字段
     * @return 结果
     */
    public int insertStationDeviceType(StationDeviceType stationDeviceType);

    /**
     * 修改设备类型字段
     * 
     * @param stationDeviceType 设备类型字段
     * @return 结果
     */
    public int updateStationDeviceType(StationDeviceType stationDeviceType);

    /**
     * 批量删除设备类型字段
     * 
     * @param stationDeviceIds 需要删除的设备类型字段主键集合
     * @return 结果
     */
    public int deleteStationDeviceTypeByStationDeviceIds(Integer[] stationDeviceIds);

    /**
     * 删除设备类型字段信息
     * 
     * @param stationDeviceId 设备类型字段主键
     * @return 结果
     */
    public int deleteStationDeviceTypeByStationDeviceId(Integer stationDeviceId);
}
