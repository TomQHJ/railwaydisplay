package com.rdisplay.railwaytoday.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.rdisplay.stationmsg.domain.StationMsg;
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
import com.rdisplay.railwaytoday.domain.Railwaytoday;
import com.rdisplay.railwaytoday.service.IRailwaytodayService;
import com.rdisplay.common.utils.poi.ExcelUtil;
import com.rdisplay.common.core.page.TableDataInfo;

/**
 * 今日车次大屏Controller
 * 
 * @author admin
 * @date 2025-07-10
 */
@RestController
@RequestMapping("/railwaytoday/railwaytoday")
public class RailwaytodayController extends BaseController
{
    @Autowired
    private IRailwaytodayService railwaytodayService;

    /**
     * 获取所有车站发送人数的相关信息
     */
    @PostMapping("/listAll")
    public AjaxResult listAll(){
        List<Railwaytoday> listAll = railwaytodayService.selectRailwaytodayList(null);
        return AjaxResult.success(listAll);
    }

    /**
     * 查询今日车次大屏列表
     */
    @PreAuthorize("@ss.hasPermi('railwaytoday:railwaytoday:list')")
    @GetMapping("/list")
    public TableDataInfo list(Railwaytoday railwaytoday)
    {
        startPage();
        List<Railwaytoday> list = railwaytodayService.selectRailwaytodayList(railwaytoday);
        return getDataTable(list);
    }

    /**
     * 导出今日车次大屏列表
     */
    @PreAuthorize("@ss.hasPermi('railwaytoday:railwaytoday:export')")
    @Log(title = "今日车次大屏", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Railwaytoday railwaytoday)
    {
        List<Railwaytoday> list = railwaytodayService.selectRailwaytodayList(railwaytoday);
        ExcelUtil<Railwaytoday> util = new ExcelUtil<Railwaytoday>(Railwaytoday.class);
        util.exportExcel(response, list, "今日车次大屏数据");
    }

    /**
     * 获取今日车次大屏详细信息
     */
    @PreAuthorize("@ss.hasPermi('railwaytoday:railwaytoday:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id)
    {
        return success(railwaytodayService.selectRailwaytodayById(id));
    }

    /**
     * 新增今日车次大屏
     */
    @PreAuthorize("@ss.hasPermi('railwaytoday:railwaytoday:add')")
    @Log(title = "今日车次大屏", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Railwaytoday railwaytoday)
    {
        return toAjax(railwaytodayService.insertRailwaytoday(railwaytoday));
    }

    /**
     * 修改今日车次大屏
     */
    @PreAuthorize("@ss.hasPermi('railwaytoday:railwaytoday:edit')")
    @Log(title = "今日车次大屏", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Railwaytoday railwaytoday)
    {
        return toAjax(railwaytodayService.updateRailwaytoday(railwaytoday));
    }

    /**
     * 删除今日车次大屏
     */
    @PreAuthorize("@ss.hasPermi('railwaytoday:railwaytoday:remove')")
    @Log(title = "今日车次大屏", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Integer[] ids)
    {
        return toAjax(railwaytodayService.deleteRailwaytodayByIds(ids));
    }
}
