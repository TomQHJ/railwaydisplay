package com.rdisplay.stationmsg.domain;

import com.rdisplay.stationman.domain.Station;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.rdisplay.common.annotation.Excel;
import com.rdisplay.common.core.domain.BaseEntity;

/**
 * 车站发送人数对象 station_msg
 * 
 * @author admin
 * @date 2025-07-10
 */
public class StationMsg extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Integer id;

    /** 车站编号 */
    @Excel(name = "车站编号")
    private Integer stationNum;

    /** 发送人数 */
    @Excel(name = "发送人数")
    private Integer sendPeop;

    /** 到达人数 */
    @Excel(name = "到达人数")
    private Integer arrivePeop;

    /* 多表联查 子表实体 */
    private Station station;

    public void setId(Integer id)
    {
        this.id = id;
    }

    public Integer getId() 
    {
        return id;
    }

    public void setStationNum(Integer stationNum) 
    {
        this.stationNum = stationNum;
    }

    public Integer getStationNum() 
    {
        return stationNum;
    }

    public void setSendPeop(Integer sendPeop) 
    {
        this.sendPeop = sendPeop;
    }

    public Integer getSendPeop() 
    {
        return sendPeop;
    }

    public void setArrivePeop(Integer arrivePeop) 
    {
        this.arrivePeop = arrivePeop;
    }

    public Integer getArrivePeop() 
    {
        return arrivePeop;
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
            .append("id", getId())
            .append("stationNum", getStationNum())
            .append("sendPeop", getSendPeop())
            .append("arrivePeop", getArrivePeop())
            .append("station", getStation())
            .toString();
    }
}
