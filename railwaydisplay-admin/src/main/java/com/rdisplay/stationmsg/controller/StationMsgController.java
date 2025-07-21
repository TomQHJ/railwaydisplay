package com.rdisplay.stationmsg.controller;

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
import com.rdisplay.stationmsg.domain.StationMsg;
import com.rdisplay.stationmsg.service.IStationMsgService;
import com.rdisplay.common.utils.poi.ExcelUtil;
import com.rdisplay.common.core.page.TableDataInfo;

/**
 * 车站发送人数Controller
 * 
 * @author admin
 * @date 2025-07-10
 */
@RestController
@RequestMapping("/stationman/stationmsg")
public class StationMsgController extends BaseController
{
    @Autowired
    private IStationMsgService stationMsgService;

    /**
     * 获取所有车站发送人数的相关信息
     */
    @PostMapping("/listAll")
    public AjaxResult listAll(){
        List<StationMsg> stationMsgs = stationMsgService.selectStationMsgList(null);
        return AjaxResult.success(stationMsgs);
    }
    /**
     * 查询车站发送人数列表
     */
    @PreAuthorize("@ss.hasPermi('stationman:stationmsg:list')")
    @GetMapping("/list")
    public TableDataInfo list(StationMsg stationMsg)
    {
        startPage();
        List<StationMsg> list = stationMsgService.selectStationMsgList(stationMsg);
        return getDataTable(list);
    }

    /**
     * 导出车站发送人数列表
     */
    @PreAuthorize("@ss.hasPermi('stationman:stationmsg:export')")
    @Log(title = "车站发送人数", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, StationMsg stationMsg)
    {
        List<StationMsg> list = stationMsgService.selectStationMsgList(stationMsg);
        ExcelUtil<StationMsg> util = new ExcelUtil<StationMsg>(StationMsg.class);
        util.exportExcel(response, list, "车站发送人数数据");
    }

    /**
     * 获取车站发送人数详细信息
     */
    @PreAuthorize("@ss.hasPermi('stationman:stationmsg:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id)
    {
        return success(stationMsgService.selectStationMsgById(id));
    }

    /**
     * 新增车站发送人数
     */
    @PreAuthorize("@ss.hasPermi('stationman:stationmsg:add')")
    @Log(title = "车站发送人数", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StationMsg stationMsg)
    {
        return toAjax(stationMsgService.insertStationMsg(stationMsg));
    }

    /**
     * 修改车站发送人数
     */
    @PreAuthorize("@ss.hasPermi('stationman:stationmsg:edit')")
    @Log(title = "车站发送人数", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StationMsg stationMsg)
    {
        return toAjax(stationMsgService.updateStationMsg(stationMsg));
    }

    /**
     * 删除车站发送人数
     */
    @PreAuthorize("@ss.hasPermi('stationman:stationmsg:remove')")
    @Log(title = "车站发送人数", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Integer[] ids)
    {
        return toAjax(stationMsgService.deleteStationMsgByIds(ids));
    }
}
