package com.rdisplay.railwayticket.service;

import java.util.List;
import com.rdisplay.railwayticket.domain.RailwayStateTicket;

/**
 * 列车状态-（检票状态，运行状态）Service接口
 * 
 * @author admin
 * @date 2025-07-11
 */
public interface IRailwayStateTicketService 
{
    /**
     * 查询列车状态-（检票状态，运行状态）
     * 
     * @param railwayStateNum 列车状态-（检票状态，运行状态）主键
     * @return 列车状态-（检票状态，运行状态）
     */
    public RailwayStateTicket selectRailwayStateTicketByRailwayStateNum(Integer railwayStateNum);

    /**
     * 查询列车状态-（检票状态，运行状态）列表
     * 
     * @param railwayStateTicket 列车状态-（检票状态，运行状态）
     * @return 列车状态-（检票状态，运行状态）集合
     */
    public List<RailwayStateTicket> selectRailwayStateTicketList(RailwayStateTicket railwayStateTicket);

    /**
     * 新增列车状态-（检票状态，运行状态）
     * 
     * @param railwayStateTicket 列车状态-（检票状态，运行状态）
     * @return 结果
     */
    public int insertRailwayStateTicket(RailwayStateTicket railwayStateTicket);

    /**
     * 修改列车状态-（检票状态，运行状态）
     * 
     * @param railwayStateTicket 列车状态-（检票状态，运行状态）
     * @return 结果
     */
    public int updateRailwayStateTicket(RailwayStateTicket railwayStateTicket);

    /**
     * 批量删除列车状态-（检票状态，运行状态）
     * 
     * @param railwayStateNums 需要删除的列车状态-（检票状态，运行状态）主键集合
     * @return 结果
     */
    public int deleteRailwayStateTicketByRailwayStateNums(Integer[] railwayStateNums);

    /**
     * 删除列车状态-（检票状态，运行状态）信息
     * 
     * @param railwayStateNum 列车状态-（检票状态，运行状态）主键
     * @return 结果
     */
    public int deleteRailwayStateTicketByRailwayStateNum(Integer railwayStateNum);
}
