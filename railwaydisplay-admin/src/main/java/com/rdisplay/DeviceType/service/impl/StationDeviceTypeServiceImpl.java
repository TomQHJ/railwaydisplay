package com.rdisplay.DeviceType.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rdisplay.DeviceType.mapper.StationDeviceTypeMapper;
import com.rdisplay.DeviceType.domain.StationDeviceType;
import com.rdisplay.DeviceType.service.IStationDeviceTypeService;

/**
 * 设备类型字段Service业务层处理
 * 
 * @author admin
 * @date 2025-07-14
 */
@Service
public class StationDeviceTypeServiceImpl implements IStationDeviceTypeService 
{
    @Autowired
    private StationDeviceTypeMapper stationDeviceTypeMapper;

    /**
     * 查询设备类型字段
     * 
     * @param stationDeviceId 设备类型字段主键
     * @return 设备类型字段
     */
    @Override
    public StationDeviceType selectStationDeviceTypeByStationDeviceId(Integer stationDeviceId)
    {
        return stationDeviceTypeMapper.selectStationDeviceTypeByStationDeviceId(stationDeviceId);
    }

    /**
     * 查询设备类型字段列表
     * 
     * @param stationDeviceType 设备类型字段
     * @return 设备类型字段
     */
    @Override
    public List<StationDeviceType> selectStationDeviceTypeList(StationDeviceType stationDeviceType)
    {
        return stationDeviceTypeMapper.selectStationDeviceTypeList(stationDeviceType);
    }

    /**
     * 新增设备类型字段
     * 
     * @param stationDeviceType 设备类型字段
     * @return 结果
     */
    @Override
    public int insertStationDeviceType(StationDeviceType stationDeviceType)
    {
        return stationDeviceTypeMapper.insertStationDeviceType(stationDeviceType);
    }

    /**
     * 修改设备类型字段
     * 
     * @param stationDeviceType 设备类型字段
     * @return 结果
     */
    @Override
    public int updateStationDeviceType(StationDeviceType stationDeviceType)
    {
        return stationDeviceTypeMapper.updateStationDeviceType(stationDeviceType);
    }

    /**
     * 批量删除设备类型字段
     * 
     * @param stationDeviceIds 需要删除的设备类型字段主键
     * @return 结果
     */
    @Override
    public int deleteStationDeviceTypeByStationDeviceIds(Integer[] stationDeviceIds)
    {
        return stationDeviceTypeMapper.deleteStationDeviceTypeByStationDeviceIds(stationDeviceIds);
    }

    /**
     * 删除设备类型字段信息
     * 
     * @param stationDeviceId 设备类型字段主键
     * @return 结果
     */
    @Override
    public int deleteStationDeviceTypeByStationDeviceId(Integer stationDeviceId)
    {
        return stationDeviceTypeMapper.deleteStationDeviceTypeByStationDeviceId(stationDeviceId);
    }
}
