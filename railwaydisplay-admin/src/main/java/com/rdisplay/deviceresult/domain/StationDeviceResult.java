package com.rdisplay.deviceresult.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.rdisplay.common.annotation.Excel;
import com.rdisplay.common.core.domain.BaseEntity;

/**
 * 车站设备维修处理状态对象 station_device_result
 * 
 * @author admin
 * @date 2025-07-14
 */
public class StationDeviceResult extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 状态编码 */
    private Integer stationDeviceResultId;

    /** 维护状态 */
    @Excel(name = "维护状态")
    private String stationDeviceResult;

    public void setStationDeviceResultId(Integer stationDeviceResultId) 
    {
        this.stationDeviceResultId = stationDeviceResultId;
    }

    public Integer getStationDeviceResultId() 
    {
        return stationDeviceResultId;
    }

    public void setStationDeviceResult(String stationDeviceResult) 
    {
        this.stationDeviceResult = stationDeviceResult;
    }

    public String getStationDeviceResult() 
    {
        return stationDeviceResult;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("stationDeviceResultId", getStationDeviceResultId())
            .append("stationDeviceResult", getStationDeviceResult())
            .toString();
    }
}
