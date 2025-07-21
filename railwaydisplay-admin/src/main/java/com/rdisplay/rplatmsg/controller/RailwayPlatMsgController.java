package com.rdisplay.rplatmsg.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
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
import com.rdisplay.rplatmsg.domain.RailwayPlatMsg;
import com.rdisplay.rplatmsg.service.IRailwayPlatMsgService;
import com.rdisplay.common.utils.poi.ExcelUtil;
import com.rdisplay.common.core.page.TableDataInfo;

/**
 * 站台信息Controller
 * 
 * @author ruoyi
 * @date 2025-07-09
 */
@RestController
@RequestMapping("/rplatmsg/rplatmsg")
public class RailwayPlatMsgController extends BaseController
{
    @Autowired
    private IRailwayPlatMsgService railwayPlatMsgService;

    /**
     * 查询站台信息列表
     */
    @PreAuthorize("@ss.hasPermi('rplatmsg:rplatmsg:list')")
    @GetMapping("/list")
    public TableDataInfo list(RailwayPlatMsg railwayPlatMsg)
    {
        startPage();
        List<RailwayPlatMsg> list = railwayPlatMsgService.selectRailwayPlatMsgList(railwayPlatMsg);
        return getDataTable(list);
    }


    /**
     * 导出站台信息列表
     */
    @PreAuthorize("@ss.hasPermi('rplatmsg:rplatmsg:export')")
    @Log(title = "站台信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, RailwayPlatMsg railwayPlatMsg)
    {
        List<RailwayPlatMsg> list = railwayPlatMsgService.selectRailwayPlatMsgList(railwayPlatMsg);
        ExcelUtil<RailwayPlatMsg> util = new ExcelUtil<RailwayPlatMsg>(RailwayPlatMsg.class);
        util.exportExcel(response, list, "站台信息数据");
    }

    /**
     * 获取站台信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('rplatmsg:rplatmsg:query')")
    @GetMapping(value = "/{platNum}")
    public AjaxResult getInfo(@PathVariable("platNum") Long platNum)
    {
        return success(railwayPlatMsgService.selectRailwayPlatMsgByPlatNum(platNum));
    }

    /**
     * 新增站台信息
     */
    @PreAuthorize("@ss.hasPermi('rplatmsg:rplatmsg:add')")
    @Log(title = "站台信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody RailwayPlatMsg railwayPlatMsg)
    {
        return toAjax(railwayPlatMsgService.insertRailwayPlatMsg(railwayPlatMsg));
    }

    /**
     * 修改站台信息
     */
    @PreAuthorize("@ss.hasPermi('rplatmsg:rplatmsg:edit')")
    @Log(title = "站台信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody RailwayPlatMsg railwayPlatMsg)
    {
        return toAjax(railwayPlatMsgService.updateRailwayPlatMsg(railwayPlatMsg));
    }

    /**
     * 删除站台信息
     */
    @PreAuthorize("@ss.hasPermi('rplatmsg:rplatmsg:remove')")
    @Log(title = "站台信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{platNums}")
    public AjaxResult remove(@PathVariable Long[] platNums)
    {
        return toAjax(railwayPlatMsgService.deleteRailwayPlatMsgByPlatNums(platNums));
    }
}
