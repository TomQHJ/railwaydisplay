package com.rdisplay.railwayticket.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rdisplay.railwayticket.mapper.RailwayStateTicketMapper;
import com.rdisplay.railwayticket.domain.RailwayStateTicket;
import com.rdisplay.railwayticket.service.IRailwayStateTicketService;

/**
 * 列车状态-（检票状态，运行状态）Service业务层处理
 * 
 * @author admin
 * @date 2025-07-11
 */
@Service
public class RailwayStateTicketServiceImpl implements IRailwayStateTicketService 
{
    @Autowired
    private RailwayStateTicketMapper railwayStateTicketMapper;

    /**
     * 查询列车状态-（检票状态，运行状态）
     * 
     * @param railwayStateNum 列车状态-（检票状态，运行状态）主键
     * @return 列车状态-（检票状态，运行状态）
     */
    @Override
    public RailwayStateTicket selectRailwayStateTicketByRailwayStateNum(Integer railwayStateNum)
    {
        return railwayStateTicketMapper.selectRailwayStateTicketByRailwayStateNum(railwayStateNum);
    }

    /**
     * 查询列车状态-（检票状态，运行状态）列表
     * 
     * @param railwayStateTicket 列车状态-（检票状态，运行状态）
     * @return 列车状态-（检票状态，运行状态）
     */
    @Override
    public List<RailwayStateTicket> selectRailwayStateTicketList(RailwayStateTicket railwayStateTicket)
    {
        return railwayStateTicketMapper.selectRailwayStateTicketList(railwayStateTicket);
    }

    /**
     * 新增列车状态-（检票状态，运行状态）
     * 
     * @param railwayStateTicket 列车状态-（检票状态，运行状态）
     * @return 结果
     */
    @Override
    public int insertRailwayStateTicket(RailwayStateTicket railwayStateTicket)
    {
        return railwayStateTicketMapper.insertRailwayStateTicket(railwayStateTicket);
    }

    /**
     * 修改列车状态-（检票状态，运行状态）
     * 
     * @param railwayStateTicket 列车状态-（检票状态，运行状态）
     * @return 结果
     */
    @Override
    public int updateRailwayStateTicket(RailwayStateTicket railwayStateTicket)
    {
        return railwayStateTicketMapper.updateRailwayStateTicket(railwayStateTicket);
    }

    /**
     * 批量删除列车状态-（检票状态，运行状态）
     * 
     * @param railwayStateNums 需要删除的列车状态-（检票状态，运行状态）主键
     * @return 结果
     */
    @Override
    public int deleteRailwayStateTicketByRailwayStateNums(Integer[] railwayStateNums)
    {
        return railwayStateTicketMapper.deleteRailwayStateTicketByRailwayStateNums(railwayStateNums);
    }

    /**
     * 删除列车状态-（检票状态，运行状态）信息
     * 
     * @param railwayStateNum 列车状态-（检票状态，运行状态）主键
     * @return 结果
     */
    @Override
    public int deleteRailwayStateTicketByRailwayStateNum(Integer railwayStateNum)
    {
        return railwayStateTicketMapper.deleteRailwayStateTicketByRailwayStateNum(railwayStateNum);
    }
}
