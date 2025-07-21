package com.rdisplay.DeviceType.controller;

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
import com.rdisplay.DeviceType.domain.StationDeviceType;
import com.rdisplay.DeviceType.service.IStationDeviceTypeService;
import com.rdisplay.common.utils.poi.ExcelUtil;
import com.rdisplay.common.core.page.TableDataInfo;

/**
 * 设备类型字段Controller
 * 
 * @author admin
 * @date 2025-07-14
 */
@RestController
@RequestMapping("/DeviceType/type")
public class StationDeviceTypeController extends BaseController
{
    @Autowired
    private IStationDeviceTypeService stationDeviceTypeService;

    /**
     * 查询设备类型字段列表
     */
    @PreAuthorize("@ss.hasPermi('DeviceType:type:list')")
    @GetMapping("/list")
    public TableDataInfo list(StationDeviceType stationDeviceType)
    {
        startPage();
        List<StationDeviceType> list = stationDeviceTypeService.selectStationDeviceTypeList(stationDeviceType);
        return getDataTable(list);
    }

    /**
     * 导出设备类型字段列表
     */
    @PreAuthorize("@ss.hasPermi('DeviceType:type:export')")
    @Log(title = "设备类型字段", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, StationDeviceType stationDeviceType)
    {
        List<StationDeviceType> list = stationDeviceTypeService.selectStationDeviceTypeList(stationDeviceType);
        ExcelUtil<StationDeviceType> util = new ExcelUtil<StationDeviceType>(StationDeviceType.class);
        util.exportExcel(response, list, "设备类型字段数据");
    }

    /**
     * 获取设备类型字段详细信息
     */
    @PreAuthorize("@ss.hasPermi('DeviceType:type:query')")
    @GetMapping(value = "/{stationDeviceId}")
    public AjaxResult getInfo(@PathVariable("stationDeviceId") Integer stationDeviceId)
    {
        return success(stationDeviceTypeService.selectStationDeviceTypeByStationDeviceId(stationDeviceId));
    }

    /**
     * 新增设备类型字段
     */
    @PreAuthorize("@ss.hasPermi('DeviceType:type:add')")
    @Log(title = "设备类型字段", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StationDeviceType stationDeviceType)
    {
        return toAjax(stationDeviceTypeService.insertStationDeviceType(stationDeviceType));
    }

    /**
     * 修改设备类型字段
     */
    @PreAuthorize("@ss.hasPermi('DeviceType:type:edit')")
    @Log(title = "设备类型字段", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StationDeviceType stationDeviceType)
    {
        return toAjax(stationDeviceTypeService.updateStationDeviceType(stationDeviceType));
    }

    /**
     * 删除设备类型字段
     */
    @PreAuthorize("@ss.hasPermi('DeviceType:type:remove')")
    @Log(title = "设备类型字段", businessType = BusinessType.DELETE)
	@DeleteMapping("/{stationDeviceIds}")
    public AjaxResult remove(@PathVariable Integer[] stationDeviceIds)
    {
        return toAjax(stationDeviceTypeService.deleteStationDeviceTypeByStationDeviceIds(stationDeviceIds));
    }
}
