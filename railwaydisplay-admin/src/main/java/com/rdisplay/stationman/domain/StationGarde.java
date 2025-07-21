package com.rdisplay.stationman.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.rdisplay.common.annotation.Excel;
import com.rdisplay.common.core.domain.BaseEntity;

/**
 * 车站等级对象 station_garde
 * 
 * @author admin
 * @date 2025-07-10
 */
public class StationGarde extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long stationGardeNum;

    /** $column.columnComment */
    @Excel(name = "车站等级")
    private String stationGarde;

    public void setStationGardeNum(Long stationGardeNum) 
    {
        this.stationGardeNum = stationGardeNum;
    }

    public Long getStationGardeNum() 
    {
        return stationGardeNum;
    }
    public void setStationGarde(String stationGarde) 
    {
        this.stationGarde = stationGarde;
    }

    public String getStationGarde() 
    {
        return stationGarde;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("stationGardeNum", getStationGardeNum())
            .append("stationGarde", getStationGarde())
            .toString();
    }
}
