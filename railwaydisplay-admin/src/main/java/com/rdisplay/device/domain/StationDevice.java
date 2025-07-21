package com.rdisplay.device.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.rdisplay.DeviceType.domain.StationDeviceType;
import com.rdisplay.stationman.domain.Station;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.rdisplay.common.annotation.Excel;
import com.rdisplay.common.core.domain.BaseEntity;

/**
 * 车站设备对象 station_device
 * 
 * @author admin
 * @date 2025-07-11
 */
public class StationDevice extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 设备ID */
    private Integer deviceId;

    /** 设备名称 */
    @Excel(name = "设备名称")
    private String deviceName;

    /** 设备分类 */
    @Excel(name = "设备分类")
    private Integer deviceType;

    /** 品牌 */
    @Excel(name = "品牌")
    private String brand;

    /** 型号 */
    @Excel(name = "型号")
    private String model;

    /** 车站编号 */
    @Excel(name = "车站编号")
    private Integer stationNum;

    /** 具体地点 */
    @Excel(name = "具体地点")
    private String location;

    /** 状态 */
    @Excel(name = "状态")
    private String status;

    /** 安装日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "安装日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date installDate;

    /** 最后一次维修时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "最后一次维修时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date lastMaintenanceDate;

    /** 计划下一次维修时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "计划下一次维修时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date nextMaintenanceDate;

    /** 多表联查 设备类型 */
    private StationDeviceType stationDeviceType;

    /** 多表联查 车站 */
    private Station station;

    public void setDeviceId(Integer deviceId)
    {
        this.deviceId = deviceId;
    }

    public Integer getDeviceId()
    {
        return deviceId;
    }

    public void setDeviceName(String deviceName) 
    {
        this.deviceName = deviceName;
    }

    public String getDeviceName() 
    {
        return deviceName;
    }

    public void setDeviceType(Integer deviceType) 
    {
        this.deviceType = deviceType;
    }

    public Integer getDeviceType() 
    {
        return deviceType;
    }

    public void setBrand(String brand) 
    {
        this.brand = brand;
    }

    public String getBrand() 
    {
        return brand;
    }

    public void setModel(String model) 
    {
        this.model = model;
    }

    public String getModel() 
    {
        return model;
    }

    public void setStationNum(Integer stationNum) 
    {
        this.stationNum = stationNum;
    }

    public Integer getStationNum() 
    {
        return stationNum;
    }

    public void setLocation(String location) 
    {
        this.location = location;
    }

    public String getLocation() 
    {
        return location;
    }

    public void setStatus(String status)
    {
        this.status = status;
    }

    public String getStatus()
    {
        return status;
    }

    public void setInstallDate(Date installDate) 
    {
        this.installDate = installDate;
    }

    public Date getInstallDate() 
    {
        return installDate;
    }

    public void setLastMaintenanceDate(Date lastMaintenanceDate) 
    {
        this.lastMaintenanceDate = lastMaintenanceDate;
    }

    public Date getLastMaintenanceDate() 
    {
        return lastMaintenanceDate;
    }

    public void setNextMaintenanceDate(Date nextMaintenanceDate) 
    {
        this.nextMaintenanceDate = nextMaintenanceDate;
    }

    public Date getNextMaintenanceDate() 
    {
        return nextMaintenanceDate;
    }

    public StationDeviceType getStationDeviceType() {
        return stationDeviceType;
    }

    public void setStationDeviceType(StationDeviceType stationDeviceType) {
        this.stationDeviceType = stationDeviceType;
    }

    public Station getStation() {
        return station;
    }

    public void setStation(Station station) {
        this.station = station;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("deviceId", getDeviceId())
            .append("deviceName", getDeviceName())
            .append("deviceType", getDeviceType())
            .append("brand", getBrand())
            .append("model", getModel())
            .append("stationNum", getStationNum())
            .append("location", getLocation())
            .append("status", getStatus())
            .append("installDate", getInstallDate())
            .append("lastMaintenanceDate", getLastMaintenanceDate())
            .append("nextMaintenanceDate", getNextMaintenanceDate())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("stationDeviceType", getStationDeviceType())
            .append("station", getStation())
            .toString();
    }
}
