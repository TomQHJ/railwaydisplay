package com.rdisplay.railwayticket.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.rdisplay.common.annotation.Excel;
import com.rdisplay.common.core.domain.BaseEntity;

/**
 * 列车状态-（检票状态，运行状态）对象 railway_state_ticket
 * 
 * @author admin
 * @date 2025-07-11
 */
public class RailwayStateTicket extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 状态编号 */
    private Integer railwayStateNum;

    /** 列车状态 */
    @Excel(name = "列车状态")
    private String railwayState;

    public void setRailwayStateNum(Integer railwayStateNum) 
    {
        this.railwayStateNum = railwayStateNum;
    }

    public Integer getRailwayStateNum() 
    {
        return railwayStateNum;
    }

    public void setRailwayState(String railwayState) 
    {
        this.railwayState = railwayState;
    }

    public String getRailwayState() 
    {
        return railwayState;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("railwayStateNum", getRailwayStateNum())
            .append("railwayState", getRailwayState())
            .toString();
    }
}
