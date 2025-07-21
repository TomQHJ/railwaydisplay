package com.rdisplay.stationman.controller;

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
import com.rdisplay.stationman.domain.Station;
import com.rdisplay.stationman.service.IStationService;
import com.rdisplay.common.utils.poi.ExcelUtil;
import com.rdisplay.common.core.page.TableDataInfo;

/**
 * 车站信息管理Controller
 * 
 * @author admin
 * @date 2025-07-10
 */
@RestController
@RequestMapping("/stationman/station")
public class StationController extends BaseController
{
    @Autowired
    private IStationService stationService;

    @PostMapping("/listAll")
    public AjaxResult listAll(){
        List<Station> stationMsgs = stationService.selectStationList(null);
        return AjaxResult.success(stationMsgs);
    }
    /**
     * 查询车站信息管理列表
     */
    @PreAuthorize("@ss.hasPermi('stationman:station:list')")
    @GetMapping("/list")
    public TableDataInfo list(Station station)
    {
        startPage();
        List<Station> list = stationService.selectStationList(station);
        return getDataTable(list);
    }

    /**
     * 导出车站信息管理列表
     */
    @PreAuthorize("@ss.hasPermi('stationman:station:export')")
    @Log(title = "车站信息管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Station station)
    {
        List<Station> list = stationService.selectStationList(station);
        ExcelUtil<Station> util = new ExcelUtil<Station>(Station.class);
        util.exportExcel(response, list, "车站信息管理数据");
    }

    /**
     * 获取车站信息管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('stationman:station:query')")
    @GetMapping(value = "/{stationNum}")
    public AjaxResult getInfo(@PathVariable("stationNum") Integer stationNum)
    {
        return success(stationService.selectStationByStationNum(stationNum));
    }

    /**
     * 新增车站信息管理
     */
    @PreAuthorize("@ss.hasPermi('stationman:station:add')")
    @Log(title = "车站信息管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Station station)
    {
        return toAjax(stationService.insertStation(station));
    }

    /**
     * 修改车站信息管理
     */
    @PreAuthorize("@ss.hasPermi('stationman:station:edit')")
    @Log(title = "车站信息管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Station station)
    {
        return toAjax(stationService.updateStation(station));
    }

    /**
     * 删除车站信息管理
     */
    @PreAuthorize("@ss.hasPermi('stationman:station:remove')")
    @Log(title = "车站信息管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{stationNums}")
    public AjaxResult remove(@PathVariable Integer[] stationNums)
    {
        return toAjax(stationService.deleteStationByStationNums(stationNums));
    }
}
