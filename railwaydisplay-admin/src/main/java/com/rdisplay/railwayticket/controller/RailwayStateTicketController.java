package com.rdisplay.railwayticket.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.rdisplay.stationman.domain.Station;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.rdisplay.common.annotation.Log;
import com.rdisplay.common.core.controller.BaseController;
import com.rdisplay.common.core.domain.AjaxResult;
import com.rdisplay.common.enums.BusinessType;
import com.rdisplay.railwayticket.domain.RailwayStateTicket;
import com.rdisplay.railwayticket.service.IRailwayStateTicketService;
import com.rdisplay.common.utils.poi.ExcelUtil;
import com.rdisplay.common.core.page.TableDataInfo;

/**
 * 列车状态-（检票状态，运行状态）Controller
 * 
 * @author admin
 * @date 2025-07-11
 */
@RestController
@RequestMapping("/railwayticket/railwayticket")
public class RailwayStateTicketController extends BaseController
{
    @Autowired
    private IRailwayStateTicketService railwayStateTicketService;

    @PostMapping("/listAll")
    public AjaxResult listAll(){
        List<RailwayStateTicket> stationMsgs = railwayStateTicketService.selectRailwayStateTicketList(null);
        return AjaxResult.success(stationMsgs);
    }

    /**
     * 查询列车状态-（检票状态，运行状态）列表
     */
    @PreAuthorize("@ss.hasPermi('railwayticket:railwayticket:list')")
    @GetMapping("/list")
    public TableDataInfo list(RailwayStateTicket railwayStateTicket)
    {
        startPage();
        List<RailwayStateTicket> list = railwayStateTicketService.selectRailwayStateTicketList(railwayStateTicket);
        return getDataTable(list);
    }

    /**
     * 导出列车状态-（检票状态，运行状态）列表
     */
    @PreAuthorize("@ss.hasPermi('railwayticket:railwayticket:export')")
    @Log(title = "列车状态-（检票状态，运行状态）", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, RailwayStateTicket railwayStateTicket)
    {
        List<RailwayStateTicket> list = railwayStateTicketService.selectRailwayStateTicketList(railwayStateTicket);
        ExcelUtil<RailwayStateTicket> util = new ExcelUtil<RailwayStateTicket>(RailwayStateTicket.class);
        util.exportExcel(response, list, "列车状态-（检票状态，运行状态）数据");
    }

    /**
     * 获取列车状态-（检票状态，运行状态）详细信息
     */
    @PreAuthorize("@ss.hasPermi('railwayticket:railwayticket:query')")
    @GetMapping(value = "/{railwayStateNum}")
    public AjaxResult getInfo(@PathVariable("railwayStateNum") Integer railwayStateNum)
    {
        return success(railwayStateTicketService.selectRailwayStateTicketByRailwayStateNum(railwayStateNum));
    }

    /**
     * 新增列车状态-（检票状态，运行状态）
     */
    @PreAuthorize("@ss.hasPermi('railwayticket:railwayticket:add')")
    @Log(title = "列车状态-（检票状态，运行状态）", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody RailwayStateTicket railwayStateTicket)
    {
        return toAjax(railwayStateTicketService.insertRailwayStateTicket(railwayStateTicket));
    }

    /**
     * 修改列车状态-（检票状态，运行状态）
     */
    @PreAuthorize("@ss.hasPermi('railwayticket:railwayticket:edit')")
    @Log(title = "列车状态-（检票状态，运行状态）", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody RailwayStateTicket railwayStateTicket)
    {
        return toAjax(railwayStateTicketService.updateRailwayStateTicket(railwayStateTicket));
    }

    /**
     * 删除列车状态-（检票状态，运行状态）
     */
    @PreAuthorize("@ss.hasPermi('railwayticket:railwayticket:remove')")
    @Log(title = "列车状态-（检票状态，运行状态）", businessType = BusinessType.DELETE)
	@DeleteMapping("/{railwayStateNums}")
    public AjaxResult remove(@PathVariable Integer[] railwayStateNums)
    {
        return toAjax(railwayStateTicketService.deleteRailwayStateTicketByRailwayStateNums(railwayStateNums));
    }
}
