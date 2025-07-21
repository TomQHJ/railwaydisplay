package com.rdisplay.peo.controller;

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
import com.rdisplay.peo.domain.StationTrainPeo;
import com.rdisplay.peo.service.IStationTrainPeoService;
import com.rdisplay.common.utils.poi.ExcelUtil;
import com.rdisplay.common.core.page.TableDataInfo;

/**
 * 车站今日列车客流信息Controller
 * 
 * @author admin
 * @date 2025-07-14
 */
@RestController
@RequestMapping("/peo/peo")
public class StationTrainPeoController extends BaseController
{
    @Autowired
    private IStationTrainPeoService stationTrainPeoService;

    /**
     * 获取所有车站发送人数的相关信息
     */
    @PostMapping("/listAll")
    public AjaxResult listAll(){
        List<StationTrainPeo> listAll = stationTrainPeoService.selectStationTrainPeoList(null);
        return AjaxResult.success(listAll);
    }

    /**
     * 查询车站今日列车客流信息列表
     */
    @PreAuthorize("@ss.hasPermi('peo:peo:list')")
    @GetMapping("/list")
    public TableDataInfo list(StationTrainPeo stationTrainPeo)
    {
        startPage();
        List<StationTrainPeo> list = stationTrainPeoService.selectStationTrainPeoList(stationTrainPeo);
        return getDataTable(list);
    }

    /**
     * 导出车站今日列车客流信息列表
     */
    @PreAuthorize("@ss.hasPermi('peo:peo:export')")
    @Log(title = "车站今日列车客流信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, StationTrainPeo stationTrainPeo)
    {
        List<StationTrainPeo> list = stationTrainPeoService.selectStationTrainPeoList(stationTrainPeo);
        ExcelUtil<StationTrainPeo> util = new ExcelUtil<StationTrainPeo>(StationTrainPeo.class);
        util.exportExcel(response, list, "车站今日列车客流信息数据");
    }

    /**
     * 获取车站今日列车客流信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('peo:peo:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id)
    {
        return success(stationTrainPeoService.selectStationTrainPeoById(id));
    }

    /**
     * 新增车站今日列车客流信息
     */
    @PreAuthorize("@ss.hasPermi('peo:peo:add')")
    @Log(title = "车站今日列车客流信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StationTrainPeo stationTrainPeo)
    {
        return toAjax(stationTrainPeoService.insertStationTrainPeo(stationTrainPeo));
    }

    /**
     * 修改车站今日列车客流信息
     */
    @PreAuthorize("@ss.hasPermi('peo:peo:edit')")
    @Log(title = "车站今日列车客流信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StationTrainPeo stationTrainPeo)
    {
        return toAjax(stationTrainPeoService.updateStationTrainPeo(stationTrainPeo));
    }

    /**
     * 删除车站今日列车客流信息
     */
    @PreAuthorize("@ss.hasPermi('peo:peo:remove')")
    @Log(title = "车站今日列车客流信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Integer[] ids)
    {
        return toAjax(stationTrainPeoService.deleteStationTrainPeoByIds(ids));
    }
}
