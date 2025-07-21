package com.rdisplay.deviceresult.controller;

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
import com.rdisplay.deviceresult.domain.StationDeviceResult;
import com.rdisplay.deviceresult.service.IStationDeviceResultService;
import com.rdisplay.common.utils.poi.ExcelUtil;
import com.rdisplay.common.core.page.TableDataInfo;

/**
 * 车站设备维修处理状态Controller
 * 
 * @author admin
 * @date 2025-07-14
 */
@RestController
@RequestMapping("/deviceresult/result")
public class StationDeviceResultController extends BaseController
{
    @Autowired
    private IStationDeviceResultService stationDeviceResultService;

    @GetMapping("/listAll")
    public AjaxResult listAll()
    {
        List<StationDeviceResult> listAll = stationDeviceResultService.selectStationDeviceResultList(null);
        return AjaxResult.success(listAll);
    }


    /**
     * 查询车站设备维修处理状态列表
     */
    @PreAuthorize("@ss.hasPermi('deviceresult:result:list')")
    @GetMapping("/list")
    public TableDataInfo list(StationDeviceResult stationDeviceResult)
    {
        startPage();
        List<StationDeviceResult> list = stationDeviceResultService.selectStationDeviceResultList(stationDeviceResult);
        return getDataTable(list);
    }

    /**
     * 导出车站设备维修处理状态列表
     */
    @PreAuthorize("@ss.hasPermi('deviceresult:result:export')")
    @Log(title = "车站设备维修处理状态", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, StationDeviceResult stationDeviceResult)
    {
        List<StationDeviceResult> list = stationDeviceResultService.selectStationDeviceResultList(stationDeviceResult);
        ExcelUtil<StationDeviceResult> util = new ExcelUtil<StationDeviceResult>(StationDeviceResult.class);
        util.exportExcel(response, list, "车站设备维修处理状态数据");
    }

    /**
     * 获取车站设备维修处理状态详细信息
     */
    @PreAuthorize("@ss.hasPermi('deviceresult:result:query')")
    @GetMapping(value = "/{stationDeviceResultId}")
    public AjaxResult getInfo(@PathVariable("stationDeviceResultId") Integer stationDeviceResultId)
    {
        return success(stationDeviceResultService.selectStationDeviceResultByStationDeviceResultId(stationDeviceResultId));
    }

    /**
     * 新增车站设备维修处理状态
     */
    @PreAuthorize("@ss.hasPermi('deviceresult:result:add')")
    @Log(title = "车站设备维修处理状态", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StationDeviceResult stationDeviceResult)
    {
        return toAjax(stationDeviceResultService.insertStationDeviceResult(stationDeviceResult));
    }

    /**
     * 修改车站设备维修处理状态
     */
    @PreAuthorize("@ss.hasPermi('deviceresult:result:edit')")
    @Log(title = "车站设备维修处理状态", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StationDeviceResult stationDeviceResult)
    {
        return toAjax(stationDeviceResultService.updateStationDeviceResult(stationDeviceResult));
    }

    /**
     * 删除车站设备维修处理状态
     */
    @PreAuthorize("@ss.hasPermi('deviceresult:result:remove')")
    @Log(title = "车站设备维修处理状态", businessType = BusinessType.DELETE)
	@DeleteMapping("/{stationDeviceResultIds}")
    public AjaxResult remove(@PathVariable Integer[] stationDeviceResultIds)
    {
        return toAjax(stationDeviceResultService.deleteStationDeviceResultByStationDeviceResultIds(stationDeviceResultIds));
    }
}
