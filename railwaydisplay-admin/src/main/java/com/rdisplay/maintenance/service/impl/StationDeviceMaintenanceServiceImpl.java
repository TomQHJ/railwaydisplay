package com.rdisplay.maintenance.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rdisplay.maintenance.mapper.StationDeviceMaintenanceMapper;
import com.rdisplay.maintenance.domain.StationDeviceMaintenance;
import com.rdisplay.maintenance.service.IStationDeviceMaintenanceService;

/**
 * 车站设备维护Service业务层处理
 * 
 * @author admin
 * @date 2025-07-11
 */
@Service
public class StationDeviceMaintenanceServiceImpl implements IStationDeviceMaintenanceService 
{
    @Autowired
    private StationDeviceMaintenanceMapper stationDeviceMaintenanceMapper;

    /**
     * 查询车站设备维护
     * 
     * @param logId 车站设备维护主键
     * @return 车站设备维护
     */
    @Override
    public StationDeviceMaintenance selectStationDeviceMaintenanceByLogId(Integer logId)
    {
        return stationDeviceMaintenanceMapper.selectStationDeviceMaintenanceByLogId(logId);
    }

    /**
     * 查询车站设备维护列表
     * 
     * @param stationDeviceMaintenance 车站设备维护
     * @return 车站设备维护
     */
    @Override
    public List<StationDeviceMaintenance> selectStationDeviceMaintenanceList(StationDeviceMaintenance stationDeviceMaintenance)
    {
        return stationDeviceMaintenanceMapper.selectStationDeviceMaintenanceList(stationDeviceMaintenance);
    }

    /**
     * 新增车站设备维护
     * 
     * @param stationDeviceMaintenance 车站设备维护
     * @return 结果
     */
    @Override
    public int insertStationDeviceMaintenance(StationDeviceMaintenance stationDeviceMaintenance)
    {
        return stationDeviceMaintenanceMapper.insertStationDeviceMaintenance(stationDeviceMaintenance);
    }

    /**
     * 修改车站设备维护
     * 
     * @param stationDeviceMaintenance 车站设备维护
     * @return 结果
     */
    @Override
    public int updateStationDeviceMaintenance(StationDeviceMaintenance stationDeviceMaintenance)
    {
        return stationDeviceMaintenanceMapper.updateStationDeviceMaintenance(stationDeviceMaintenance);
    }

    /**
     * 批量删除车站设备维护
     * 
     * @param logIds 需要删除的车站设备维护主键
     * @return 结果
     */
    @Override
    public int deleteStationDeviceMaintenanceByLogIds(Integer[] logIds)
    {
        return stationDeviceMaintenanceMapper.deleteStationDeviceMaintenanceByLogIds(logIds);
    }

    /**
     * 删除车站设备维护信息
     * 
     * @param logId 车站设备维护主键
     * @return 结果
     */
    @Override
    public int deleteStationDeviceMaintenanceByLogId(Integer logId)
    {
        return stationDeviceMaintenanceMapper.deleteStationDeviceMaintenanceByLogId(logId);
    }
}
