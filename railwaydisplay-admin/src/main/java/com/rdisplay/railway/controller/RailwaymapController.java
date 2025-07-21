package com.rdisplay.railway.controller;

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
import com.rdisplay.railway.domain.Railwaymap;
import com.rdisplay.railway.service.IRailwaymapService;
import com.rdisplay.common.utils.poi.ExcelUtil;
import com.rdisplay.common.core.page.TableDataInfo;

/**
 * 列车运行图Controller
 * 
 * @author admin
 * @date 2025-07-11
 */
@RestController
@RequestMapping("/railway/railwaymap")
public class RailwaymapController extends BaseController
{
    @Autowired
    private IRailwaymapService railwaymapService;

    /**
     * 查询列车运行图列表
     */
    @PreAuthorize("@ss.hasPermi('railway:railwaymap:list')")
    @GetMapping("/list")
    public TableDataInfo list(Railwaymap railwaymap)
    {
        startPage();
        List<Railwaymap> list = railwaymapService.selectRailwaymapList(railwaymap);
        return getDataTable(list);
    }

    /**
     * 导出列车运行图列表
     */
    @PreAuthorize("@ss.hasPermi('railway:railwaymap:export')")
    @Log(title = "列车运行图", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Railwaymap railwaymap)
    {
        List<Railwaymap> list = railwaymapService.selectRailwaymapList(railwaymap);
        ExcelUtil<Railwaymap> util = new ExcelUtil<Railwaymap>(Railwaymap.class);
        util.exportExcel(response, list, "列车运行图数据");
    }

    /**
     * 获取列车运行图详细信息
     */
    @PreAuthorize("@ss.hasPermi('railway:railwaymap:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id)
    {
        return success(railwaymapService.selectRailwaymapById(id));
    }

    /**
     * 获取列车运行图详细信息
     */
    @PreAuthorize("@ss.hasPermi('railway:railwaymap:query')")
    @PostMapping(value = "/{trainNum}")
    public AjaxResult getrailwaymapByTrainNum(@PathVariable("trainNum") String trainNum)
    {
        return success(railwaymapService.selectRailwaymapByTrainNum(trainNum));
    }

    /**
     * 新增列车运行图
     */
    @PreAuthorize("@ss.hasPermi('railway:railwaymap:add')")
    @Log(title = "列车运行图", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Railwaymap railwaymap)
    {
        return toAjax(railwaymapService.insertRailwaymap(railwaymap));
    }

    /**
     * 修改列车运行图
     */
    @PreAuthorize("@ss.hasPermi('railway:railwaymap:edit')")
    @Log(title = "列车运行图", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Railwaymap railwaymap)
    {
        return toAjax(railwaymapService.updateRailwaymap(railwaymap));
    }

    /**
     * 删除列车运行图
     */
    @PreAuthorize("@ss.hasPermi('railway:railwaymap:remove')")
    @Log(title = "列车运行图", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Integer[] ids)
    {
        return toAjax(railwaymapService.deleteRailwaymapByIds(ids));
    }
}
