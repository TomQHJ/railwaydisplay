package com.rdisplay.maintenance.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.rdisplay.deviceresult.domain.StationDeviceResult;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.rdisplay.common.annotation.Excel;
import com.rdisplay.common.core.domain.BaseEntity;

/**
 * 车站设备维护对象 station_device_maintenance
 * 
 * @author admin
 * @date 2025-07-11
 */
public class StationDeviceMaintenance extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 记录id */
    private Integer logId;

    /** 设备id */
    @Excel(name = "设备id")
    private Integer deviceId;

    /** 维护时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "维护时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date maintenanceDate;

    /** 维护类型 */
    @Excel(name = "维护类型")
    private String maintenanceType;

    /** 操作人员 */
    @Excel(name = "操作人员")
    private String operator;

    /** 故障原因 */
    @Excel(name = "故障原因")
    private String description;

    /** 处理结果（成/失/跟进） */
    @Excel(name = "处理结果", readConverterExp = "成=/失/跟进")
    private Integer result;

    /** 现场照片 */
    @Excel(name = "现场照片")
    private String attachment;

    /** 多表联查 设备维修状态 */
    private StationDeviceResult stationDeviceResult;

    public void setLogId(Integer logId) 
    {
        this.logId = logId;
    }

    public Integer getLogId() 
    {
        return logId;
    }

    public void setDeviceId(Integer deviceId) 
    {
        this.deviceId = deviceId;
    }

    public Integer getDeviceId() 
    {
        return deviceId;
    }

    public void setMaintenanceDate(Date maintenanceDate) 
    {
        this.maintenanceDate = maintenanceDate;
    }

    public Date getMaintenanceDate() 
    {
        return maintenanceDate;
    }

    public void setMaintenanceType(String maintenanceType) 
    {
        this.maintenanceType = maintenanceType;
    }

    public String getMaintenanceType() 
    {
        return maintenanceType;
    }

    public void setOperator(String operator) 
    {
        this.operator = operator;
    }

    public String getOperator() 
    {
        return operator;
    }

    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }

    public void setResult(Integer result) 
    {
        this.result = result;
    }

    public Integer getResult() 
    {
        return result;
    }

    public void setAttachment(String attachment) 
    {
        this.attachment = attachment;
    }

    public String getAttachment() 
    {
        return attachment;
    }

    public StationDeviceResult getStationDeviceResult() {
        return stationDeviceResult;
    }

    public void setStationDeviceResult(StationDeviceResult stationDeviceResult) {
        this.stationDeviceResult = stationDeviceResult;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("logId", getLogId())
            .append("deviceId", getDeviceId())
            .append("maintenanceDate", getMaintenanceDate())
            .append("maintenanceType", getMaintenanceType())
            .append("operator", getOperator())
            .append("description", getDescription())
            .append("result", getResult())
            .append("attachment", getAttachment())
            .append("stationDeviceResult", getStationDeviceResult())
            .toString();
    }
}
