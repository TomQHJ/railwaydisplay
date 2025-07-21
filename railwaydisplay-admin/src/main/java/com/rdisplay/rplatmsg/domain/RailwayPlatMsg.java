package com.rdisplay.rplatmsg.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.rdisplay.common.annotation.Excel;
import com.rdisplay.common.core.domain.BaseEntity;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 站台信息对象 railway_plat_msg
 * 
 * @author ruoyi
 * @date 2025-07-09
 */
public class RailwayPlatMsg extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 站台编号 */
    private Long platNum;

    /** 车次 */
    @Excel(name = "车次")
    private String trainNum;

    /** 始发站 */
    @Excel(name = "始发站")
    private String depStation;

    /** 终到站 */
    @Excel(name = "终到站")
    private String terStation;

    /** 发车时间 */
    @Excel(name = "发车时间", width = 30)
    private String startTime;

    public void setPlatNum(Long platNum) 
    {
        this.platNum = platNum;
    }

    public Long getPlatNum() 
    {
        return platNum;
    }

    public void setTrainNum(String trainNum) 
    {
        this.trainNum = trainNum;
    }

    public String getTrainNum() 
    {
        return trainNum;
    }

    public void setDepStation(String depStation) 
    {
        this.depStation = depStation;
    }

    public String getDepStation() 
    {
        return depStation;
    }

    public void setTerStation(String terStation) 
    {
        this.terStation = terStation;
    }

    public String getTerStation() 
    {
        return terStation;
    }

    public void setStartTime(String startTime) 
    {
        this.startTime = startTime;
    }

    public String getStartTime() 
    {
        return startTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("platNum", getPlatNum())
            .append("trainNum", getTrainNum())
            .append("depStation", getDepStation())
            .append("terStation", getTerStation())
            .append("startTime", getStartTime())
            .toString();
    }
}
