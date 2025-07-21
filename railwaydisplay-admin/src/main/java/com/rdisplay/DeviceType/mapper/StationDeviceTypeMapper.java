package com.rdisplay.DeviceType.mapper;

import java.util.List;
import com.rdisplay.DeviceType.domain.StationDeviceType;

/**
 * 设备类型字段Mapper接口
 * 
 * @author admin
 * @date 2025-07-14
 */
public interface StationDeviceTypeMapper 
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
     * 删除设备类型字段
     * 
     * @param stationDeviceId 设备类型字段主键
     * @return 结果
     */
    public int deleteStationDeviceTypeByStationDeviceId(Integer stationDeviceId);

    /**
     * 批量删除设备类型字段
     * 
     * @param stationDeviceIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteStationDeviceTypeByStationDeviceIds(Integer[] stationDeviceIds);
}
