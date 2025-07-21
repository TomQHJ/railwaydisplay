package com.rdisplay.DeviceType.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.rdisplay.common.annotation.Excel;
import com.rdisplay.common.core.domain.BaseEntity;

/**
 * 设备类型字段对象 station_device_type
 * 
 * @author admin
 * @date 2025-07-14
 */
public class StationDeviceType extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 设备类型编号 */
    private Integer stationDeviceId;

    /** 设备类型名 */
    @Excel(name = "设备类型名")
    private String stationDeviceName;

    public void setStationDeviceId(Integer stationDeviceId) 
    {
        this.stationDeviceId = stationDeviceId;
    }

    public Integer getStationDeviceId() 
    {
        return stationDeviceId;
    }

    public void setStationDeviceName(String stationDeviceName) 
    {
        this.stationDeviceName = stationDeviceName;
    }

    public String getStationDeviceName() 
    {
        return stationDeviceName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("stationDeviceId", getStationDeviceId())
            .append("stationDeviceName", getStationDeviceName())
            .toString();
    }
}
