package com.rdisplay.railway.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.rdisplay.common.annotation.Excel;
import com.rdisplay.common.core.domain.BaseEntity;

/**
 * 列车运行图对象 railwaymap
 * 
 * @author admin
 * @date 2025-07-11
 */
public class Railwaymap extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Integer id;

    /** 车次 */
    @Excel(name = "车次")
    private String trainNum;

    /** 始发站 */
    @Excel(name = "始发站")
    private String depStation;

    /** 发车时间 */
//    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "发车时间", width = 30)
    private String depTime;

    /** 途径站1 */
    @Excel(name = "途径站1")
    private String wayStation01;

    /** 途径发车时间 */
//    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "途径发车时间", width = 30 )
    private String wayDepTime01;

    /** 途径站2 */
    @Excel(name = "途径站2")
    private String wayStation02;

    /** 途径发车时间 */
//    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "途径发车时间", width = 30 )
    private String wayDepTime02;

    /** 途径站3 */
    @Excel(name = "途径站3")
    private String wayStation03;

    /** 途径发车时间 */
//    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "途径发车时间", width = 30 )
    private String wayDepTime03;

    /** 终点站 */
    @Excel(name = "终点站")
    private String terStation;

    /** 终到时间 */
//    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "终到时间", width = 30)
    private String terTime;

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

    public void setDepStation(String depStation) 
    {
        this.depStation = depStation;
    }

    public String getDepStation() 
    {
        return depStation;
    }

    public void setDepTime(String depTime)
    {
        this.depTime = depTime;
    }

    public String getDepTime()
    {
        return depTime;
    }

    public void setWayStation01(String wayStation01) 
    {
        this.wayStation01 = wayStation01;
    }

    public String getWayStation01() 
    {
        return wayStation01;
    }

    public void setWayDepTime01(String wayDepTime01)
    {
        this.wayDepTime01 = wayDepTime01;
    }

    public String getWayDepTime01()
    {
        return wayDepTime01;
    }

    public void setWayStation02(String wayStation02) 
    {
        this.wayStation02 = wayStation02;
    }

    public String getWayStation02() 
    {
        return wayStation02;
    }

    public void setWayDepTime02(String wayDepTime02)
    {
        this.wayDepTime02 = wayDepTime02;
    }

    public String getWayDepTime02()
    {
        return wayDepTime02;
    }

    public void setWayStation03(String wayStation03) 
    {
        this.wayStation03 = wayStation03;
    }

    public String getWayStation03() 
    {
        return wayStation03;
    }

    public void setWayDepTime03(String wayDepTime03)
    {
        this.wayDepTime03 = wayDepTime03;
    }

    public String getWayDepTime03()
    {
        return wayDepTime03;
    }

    public void setTerStation(String terStation) 
    {
        this.terStation = terStation;
    }

    public String getTerStation() 
    {
        return terStation;
    }

    public void setTerTime(String terTime)
    {
        this.terTime = terTime;
    }

    public String getTerTime()
    {
        return terTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("trainNum", getTrainNum())
            .append("depStation", getDepStation())
            .append("depTime", getDepTime())
            .append("wayStation01", getWayStation01())
            .append("wayDepTime01", getWayDepTime01())
            .append("wayStation02", getWayStation02())
            .append("wayDepTime02", getWayDepTime02())
            .append("wayStation03", getWayStation03())
            .append("wayDepTime03", getWayDepTime03())
            .append("terStation", getTerStation())
            .append("terTime", getTerTime())
            .toString();
    }
}
