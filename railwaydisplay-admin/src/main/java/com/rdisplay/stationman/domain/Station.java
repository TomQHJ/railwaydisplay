package com.rdisplay.stationman.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.rdisplay.common.annotation.Excel;
import com.rdisplay.common.core.domain.BaseEntity;

/**
 * 车站信息管理对象 station
 * 
 * @author admin
 * @date 2025-07-10
 */
public class Station extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 车站编号 */
    private Integer stationNum;

    /** 车站名称 */
    @Excel(name = "车站名称")
    private String stationName;

    /** 车站缩写 */
    @Excel(name = "车站缩写")
    private String sName;

    /** 车站等级（0-2: 特，一，二） */
    @Excel(name = "车站等级", readConverterExp = "0=特等站, 1=一等站, 2=二等站, 3=三等站")
    private Integer stationGardeNum;

    /** 多表联查 车站等级实体 */
    private StationGarde stationGarde;

    public void setStationNum(Integer stationNum) 
    {
        this.stationNum = stationNum;
    }

    public Integer getStationNum() 
    {
        return stationNum;
    }

    public void setStationName(String stationName) 
    {
        this.stationName = stationName;
    }

    public String getStationName() 
    {
        return stationName;
    }

    public void setsName(String sName) 
    {
        this.sName = sName;
    }

    public String getsName() 
    {
        return sName;
    }

    public void setStationGardeNum(Integer stationGardeNum)
    {
        this.stationGardeNum = stationGardeNum;
    }

    public Integer getStationGardeNum()
    {
        return stationGardeNum;
    }

    public StationGarde getStationGarde() {
        return stationGarde;
    }

    public void setStationGarde(StationGarde stationGarde) {
        this.stationGarde = stationGarde;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("stationNum", getStationNum())
            .append("stationName", getStationName())
            .append("sName", getsName())
            .append("stationGardeNum", getStationGardeNum())
            .append("stationGarde", getStationGarde())
            .toString();
    }
}
