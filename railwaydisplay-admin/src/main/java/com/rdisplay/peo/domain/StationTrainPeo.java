package com.rdisplay.peo.domain;

import com.rdisplay.stationman.domain.Station;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.rdisplay.common.annotation.Excel;
import com.rdisplay.common.core.domain.BaseEntity;

/**
 * 车站今日列车客流信息对象 station_train_peo
 * 
 * @author admin
 * @date 2025-07-14
 */
public class StationTrainPeo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Integer id;

    /** 车次 */
    @Excel(name = "车次")
    private String trainNum;

    /** 上车人数 */
    @Excel(name = "上车人数")
    private Integer tTp;

    /** 下车人数 */
    @Excel(name = "下车人数")
    private Integer dTp;

    /** 车站编号 */
    @Excel(name = "车站编号")
    private Integer stationNum;

    /** 多表联查 station对象 获取stationname */
    private Station station;

    public void setId(Integer id) 
    {
        this.id = id;
    }

    public Integer getId() 
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

    public void settTp(Integer tTp) 
    {
        this.tTp = tTp;
    }

    public Integer gettTp() 
    {
        return tTp;
    }

    public void setdTp(Integer dTp) 
    {
        this.dTp = dTp;
    }

    public Integer getdTp() 
    {
        return dTp;
    }

    public void setStationNum(Integer stationNum) 
    {
        this.stationNum = stationNum;
    }

    public Integer getStationNum() 
    {
        return stationNum;
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
            .append("trainNum", getTrainNum())
            .append("tTp", gettTp())
            .append("dTp", getdTp())
            .append("stationNum", getStationNum())
            .append("station",getStation())
            .toString();
    }
}
