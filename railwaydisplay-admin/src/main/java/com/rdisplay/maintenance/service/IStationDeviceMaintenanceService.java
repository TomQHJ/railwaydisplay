package com.rdisplay.maintenance.service;

import java.util.List;
import com.rdisplay.maintenance.domain.StationDeviceMaintenance;

/**
 * 车站设备维护Service接口
 * 
 * @author admin
 * @date 2025-07-11
 */
public interface IStationDeviceMaintenanceService 
{
    /**
     * 查询车站设备维护
     * 
     * @param logId 车站设备维护主键
     * @return 车站设备维护
     */
    public StationDeviceMaintenance selectStationDeviceMaintenanceByLogId(Integer logId);

    /**
     * 查询车站设备维护列表
     * 
     * @param stationDeviceMaintenance 车站设备维护
     * @return 车站设备维护集合
     */
    public List<StationDeviceMaintenance> selectStationDeviceMaintenanceList(StationDeviceMaintenance stationDeviceMaintenance);

    /**
     * 新增车站设备维护
     * 
     * @param stationDeviceMaintenance 车站设备维护
     * @return 结果
     */
    public int insertStationDeviceMaintenance(StationDeviceMaintenance stationDeviceMaintenance);

    /**
     * 修改车站设备维护
     * 
     * @param stationDeviceMaintenance 车站设备维护
     * @return 结果
     */
    public int updateStationDeviceMaintenance(StationDeviceMaintenance stationDeviceMaintenance);

    /**
     * 批量删除车站设备维护
     * 
     * @param logIds 需要删除的车站设备维护主键集合
     * @return 结果
     */
    public int deleteStationDeviceMaintenanceByLogIds(Integer[] logIds);

    /**
     * 删除车站设备维护信息
     * 
     * @param logId 车站设备维护主键
     * @return 结果
     */
    public int deleteStationDeviceMaintenanceByLogId(Integer logId);
}
