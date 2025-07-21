package com.rdisplay.maintenance.controller;

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
import com.rdisplay.maintenance.domain.StationDeviceMaintenance;
import com.rdisplay.maintenance.service.IStationDeviceMaintenanceService;
import com.rdisplay.common.utils.poi.ExcelUtil;
import com.rdisplay.common.core.page.TableDataInfo;

/**
 * 车站设备维护Controller
 * 
 * @author admin
 * @date 2025-07-11
 */
@RestController
@RequestMapping("/maintenance/maintenance")
public class StationDeviceMaintenanceController extends BaseController
{
    @Autowired
    private IStationDeviceMaintenanceService stationDeviceMaintenanceService;

    @PostMapping("/listAll")
    public AjaxResult listAll(){
        List<StationDeviceMaintenance> listAll = stationDeviceMaintenanceService.selectStationDeviceMaintenanceList(null);
        return AjaxResult.success(listAll);
    }

    /**
     * 查询车站设备维护列表
     */
    @PreAuthorize("@ss.hasPermi('maintenance:maintenance:list')")
    @GetMapping("/list")
    public TableDataInfo list(StationDeviceMaintenance stationDeviceMaintenance)
    {
        startPage();
        List<StationDeviceMaintenance> list = stationDeviceMaintenanceService.selectStationDeviceMaintenanceList(stationDeviceMaintenance);
        return getDataTable(list);
    }

    /**
     * 导出车站设备维护列表
     */
    @PreAuthorize("@ss.hasPermi('maintenance:maintenance:export')")
    @Log(title = "车站设备维护", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, StationDeviceMaintenance stationDeviceMaintenance)
    {
        List<StationDeviceMaintenance> list = stationDeviceMaintenanceService.selectStationDeviceMaintenanceList(stationDeviceMaintenance);
        ExcelUtil<StationDeviceMaintenance> util = new ExcelUtil<StationDeviceMaintenance>(StationDeviceMaintenance.class);
        util.exportExcel(response, list, "车站设备维护数据");
    }

    /**
     * 获取车站设备维护详细信息
     */
    @PreAuthorize("@ss.hasPermi('maintenance:maintenance:query')")
    @GetMapping(value = "/{logId}")
    public AjaxResult getInfo(@PathVariable("logId") Integer logId)
    {
        return success(stationDeviceMaintenanceService.selectStationDeviceMaintenanceByLogId(logId));
    }

    /**
     * 新增车站设备维护
     */
    @PreAuthorize("@ss.hasPermi('maintenance:maintenance:add')")
    @Log(title = "车站设备维护", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StationDeviceMaintenance stationDeviceMaintenance)
    {
        return toAjax(stationDeviceMaintenanceService.insertStationDeviceMaintenance(stationDeviceMaintenance));
    }

    /**
     * 修改车站设备维护
     */
    @PreAuthorize("@ss.hasPermi('maintenance:maintenance:edit')")
    @Log(title = "车站设备维护", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StationDeviceMaintenance stationDeviceMaintenance)
    {
        return toAjax(stationDeviceMaintenanceService.updateStationDeviceMaintenance(stationDeviceMaintenance));
    }

    /**
     * 删除车站设备维护
     */
    @PreAuthorize("@ss.hasPermi('maintenance:maintenance:remove')")
    @Log(title = "车站设备维护", businessType = BusinessType.DELETE)
	@DeleteMapping("/{logIds}")
    public AjaxResult remove(@PathVariable Integer[] logIds)
    {
        return toAjax(stationDeviceMaintenanceService.deleteStationDeviceMaintenanceByLogIds(logIds));
    }
}
