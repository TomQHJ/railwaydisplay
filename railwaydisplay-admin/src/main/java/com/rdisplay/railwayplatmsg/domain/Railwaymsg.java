package com.rdisplay.railwayplatmsg.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.rdisplay.railwayticket.domain.RailwayStateTicket;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.rdisplay.common.annotation.Excel;
import com.rdisplay.common.core.domain.BaseEntity;

/**
 * 检票口列车信息对象 railwaymsg
 * 
 * @author admin
 * @date 2025-07-14
 */
public class Railwaymsg extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 车次 */
    @Excel(name = "车次")
    private String trainNum;

    /** 始发站 */
    @Excel(name = "始发站")
    private String depStation;

    /** 终到站 */
    @Excel(name = "终到站")
    private String terStation;

    /** 开车时间 */
//    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "开车时间", width = 30)
    private String startTime;

    /** 站台 */
    @Excel(name = "站台")
    private Integer plat;

    /** 状态 */
    @Excel(name = "状态" ,readConverterExp = "0=正在候车, 1=正在检票, 2=准备检票, 5=早点, 6=晚点, -1=停止检票")
    private Integer state;

    /** 多表联查 列车状态实体 */
    private RailwayStateTicket stateTicket;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
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

    public void setPlat(Integer plat) 
    {
        this.plat = plat;
    }

    public Integer getPlat() 
    {
        return plat;
    }

    public void setState(Integer state) 
    {
        this.state = state;
    }

    public Integer getState() 
    {
        return state;
    }

    public RailwayStateTicket getStateTicket() {
        return stateTicket;
    }

    public void setStateTicket(RailwayStateTicket stateTicket) {
        this.stateTicket = stateTicket;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("trainNum", getTrainNum())
            .append("depStation", getDepStation())
            .append("terStation", getTerStation())
            .append("startTime", getStartTime())
            .append("plat", getPlat())
            .append("state", getState())
            .append("stateTicket",getStateTicket())
            .toString();
    }
}
