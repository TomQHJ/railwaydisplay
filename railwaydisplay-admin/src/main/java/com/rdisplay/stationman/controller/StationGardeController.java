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
import com.rdisplay.stationman.domain.StationGarde;
import com.rdisplay.stationman.service.IStationGardeService;
import com.rdisplay.common.utils.poi.ExcelUtil;
import com.rdisplay.common.core.page.TableDataInfo;

/**
 * 车站等级Controller
 * 
 * @author admin
 * @date 2025-07-15
 */
@RestController
@RequestMapping("/stationman/garde")
public class StationGardeController extends BaseController
{
    @Autowired
    private IStationGardeService stationGardeService;

    @PostMapping("/listAll")
    public AjaxResult listAll(){
        List<StationGarde> stationGardes = stationGardeService.selectStationGardeList(null);
        return AjaxResult.success(stationGardes);
    }

    /**
     * 查询车站等级列表
     */
    @PreAuthorize("@ss.hasPermi('stationman:garde:list')")
    @GetMapping("/list")
    public TableDataInfo list(StationGarde stationGarde)
    {
        startPage();
        List<StationGarde> list = stationGardeService.selectStationGardeList(stationGarde);
        return getDataTable(list);
    }

    /**
     * 导出车站等级列表
     */
    @PreAuthorize("@ss.hasPermi('stationman:garde:export')")
    @Log(title = "车站等级", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, StationGarde stationGarde)
    {
        List<StationGarde> list = stationGardeService.selectStationGardeList(stationGarde);
        ExcelUtil<StationGarde> util = new ExcelUtil<StationGarde>(StationGarde.class);
        util.exportExcel(response, list, "车站等级数据");
    }

    /**
     * 获取车站等级详细信息
     */
    @PreAuthorize("@ss.hasPermi('stationman:garde:query')")
    @GetMapping(value = "/{stationGardeNum}")
    public AjaxResult getInfo(@PathVariable("stationGardeNum") Long stationGardeNum)
    {
        return success(stationGardeService.selectStationGardeByStationGardeNum(stationGardeNum));
    }

    /**
     * 新增车站等级
     */
    @PreAuthorize("@ss.hasPermi('stationman:garde:add')")
    @Log(title = "车站等级", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StationGarde stationGarde)
    {
        return toAjax(stationGardeService.insertStationGarde(stationGarde));
    }

    /**
     * 修改车站等级
     */
    @PreAuthorize("@ss.hasPermi('stationman:garde:edit')")
    @Log(title = "车站等级", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StationGarde stationGarde)
    {
        return toAjax(stationGardeService.updateStationGarde(stationGarde));
    }

    /**
     * 删除车站等级
     */
    @PreAuthorize("@ss.hasPermi('stationman:garde:remove')")
    @Log(title = "车站等级", businessType = BusinessType.DELETE)
	@DeleteMapping("/{stationGardeNums}")
    public AjaxResult remove(@PathVariable Long[] stationGardeNums)
    {
        return toAjax(stationGardeService.deleteStationGardeByStationGardeNums(stationGardeNums));
    }
}
