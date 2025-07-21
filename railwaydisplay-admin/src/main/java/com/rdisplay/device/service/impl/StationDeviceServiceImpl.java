package com.rdisplay.device.service.impl;

import java.util.List;
import com.rdisplay.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rdisplay.device.mapper.StationDeviceMapper;
import com.rdisplay.device.domain.StationDevice;
import com.rdisplay.device.service.IStationDeviceService;

/**
 * 车站设备Service业务层处理
 * 
 * @author admin
 * @date 2025-07-11
 */
@Service
public class StationDeviceServiceImpl implements IStationDeviceService 
{
    @Autowired
    private StationDeviceMapper stationDeviceMapper;

    /**
     * 查询车站设备
     * 
     * @param deviceId 车站设备主键
     * @return 车站设备
     */
    @Override
    public StationDevice selectStationDeviceByDeviceId(Integer deviceId)
    {
        return stationDeviceMapper.selectStationDeviceByDeviceId(deviceId);
    }

    /**
     * 查询车站设备列表
     * 
     * @param stationDevice 车站设备
     * @return 车站设备
     */
    @Override
    public List<StationDevice> selectStationDeviceList(StationDevice stationDevice)
    {
        return stationDeviceMapper.selectStationDeviceList(stationDevice);
    }

    /**
     * 新增车站设备
     * 
     * @param stationDevice 车站设备
     * @return 结果
     */
    @Override
    public int insertStationDevice(StationDevice stationDevice)
    {
        stationDevice.setCreateTime(DateUtils.getNowDate());
        return stationDeviceMapper.insertStationDevice(stationDevice);
    }

    /**
     * 修改车站设备
     * 
     * @param stationDevice 车站设备
     * @return 结果
     */
    @Override
    public int updateStationDevice(StationDevice stationDevice)
    {
        stationDevice.setUpdateTime(DateUtils.getNowDate());
        return stationDeviceMapper.updateStationDevice(stationDevice);
    }

    /**
     * 批量删除车站设备
     * 
     * @param deviceIds 需要删除的车站设备主键
     * @return 结果
     */
    @Override
    public int deleteStationDeviceByDeviceIds(Integer[] deviceIds)
    {
        return stationDeviceMapper.deleteStationDeviceByDeviceIds(deviceIds);
    }

    /**
     * 删除车站设备信息
     * 
     * @param deviceId 车站设备主键
     * @return 结果
     */
    @Override
    public int deleteStationDeviceByDeviceId(Integer deviceId)
    {
        return stationDeviceMapper.deleteStationDeviceByDeviceId(deviceId);
    }
}
