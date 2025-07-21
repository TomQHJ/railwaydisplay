package com.rdisplay.device.controller;

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
import com.rdisplay.device.domain.StationDevice;
import com.rdisplay.device.service.IStationDeviceService;
import com.rdisplay.common.utils.poi.ExcelUtil;
import com.rdisplay.common.core.page.TableDataInfo;

/**
 * 车站设备Controller
 * 
 * @author admin
 * @date 2025-07-11
 */
@RestController
@RequestMapping("/device/device")
public class StationDeviceController extends BaseController
{
    @Autowired
    private IStationDeviceService stationDeviceService;

    @PostMapping("/listAll")
    public AjaxResult listAll(){
        List<StationDevice> listAll = stationDeviceService.selectStationDeviceList(null);
        return AjaxResult.success(listAll);
    }

    /**
     * 查询车站设备列表
     */
    @PreAuthorize("@ss.hasPermi('device:device:list')")
    @GetMapping("/list")
    public TableDataInfo list(StationDevice stationDevice)
    {
        startPage();
        List<StationDevice> list = stationDeviceService.selectStationDeviceList(stationDevice);
        return getDataTable(list);
    }

    /**
     * 导出车站设备列表
     */
    @PreAuthorize("@ss.hasPermi('device:device:export')")
    @Log(title = "车站设备", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, StationDevice stationDevice)
    {
        List<StationDevice> list = stationDeviceService.selectStationDeviceList(stationDevice);
        ExcelUtil<StationDevice> util = new ExcelUtil<StationDevice>(StationDevice.class);
        util.exportExcel(response, list, "车站设备数据");
    }

    /**
     * 获取车站设备详细信息
     */
    @PreAuthorize("@ss.hasPermi('device:device:query')")
    @GetMapping(value = "/{deviceId}")
    public AjaxResult getInfo(@PathVariable("deviceId") Integer deviceId)
    {
        return success(stationDeviceService.selectStationDeviceByDeviceId(deviceId));
    }

    /**
     * 新增车站设备
     */
    @PreAuthorize("@ss.hasPermi('device:device:add')")
    @Log(title = "车站设备", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StationDevice stationDevice)
    {
        return toAjax(stationDeviceService.insertStationDevice(stationDevice));
    }

    /**
     * 修改车站设备
     */
    @PreAuthorize("@ss.hasPermi('device:device:edit')")
    @Log(title = "车站设备", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StationDevice stationDevice)
    {
        return toAjax(stationDeviceService.updateStationDevice(stationDevice));
    }

    /**
     * 删除车站设备
     */
    @PreAuthorize("@ss.hasPermi('device:device:remove')")
    @Log(title = "车站设备", businessType = BusinessType.DELETE)
	@DeleteMapping("/{deviceIds}")
    public AjaxResult remove(@PathVariable Integer[] deviceIds)
    {
        return toAjax(stationDeviceService.deleteStationDeviceByDeviceIds(deviceIds));
    }
}
