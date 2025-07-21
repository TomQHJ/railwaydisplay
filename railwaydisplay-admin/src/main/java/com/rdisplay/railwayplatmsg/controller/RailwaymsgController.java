package com.rdisplay.railwayplatmsg.controller;

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
import com.rdisplay.railwayplatmsg.domain.Railwaymsg;
import com.rdisplay.railwayplatmsg.service.IRailwaymsgService;
import com.rdisplay.common.utils.poi.ExcelUtil;
import com.rdisplay.common.core.page.TableDataInfo;

/**
 * 检票口列车信息Controller
 * 
 * @author admin
 * @date 2025-07-14
 */
@RestController
@RequestMapping("/railwayplatmsg/railwayplatmsg")
public class RailwaymsgController extends BaseController
{
    @Autowired
    private IRailwaymsgService railwaymsgService;

    @PostMapping("/listAll")
    public AjaxResult listAll(){
        List<Railwaymsg> listAll = railwaymsgService.selectRailwaymsgList(null);
        return AjaxResult.success(listAll);
    }

    /**
     * 查询检票口列车信息列表
     */
    @PreAuthorize("@ss.hasPermi('railwayplatmsg:railwayplatmsg:list')")
    @GetMapping("/list")
    public TableDataInfo list(Railwaymsg railwaymsg)
    {
        startPage();
        List<Railwaymsg> list = railwaymsgService.selectRailwaymsgList(railwaymsg);
        return getDataTable(list);
    }

    /**
     * 导出检票口列车信息列表
     */
    @PreAuthorize("@ss.hasPermi('railwayplatmsg:railwayplatmsg:export')")
    @Log(title = "检票口列车信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Railwaymsg railwaymsg)
    {
        List<Railwaymsg> list = railwaymsgService.selectRailwaymsgList(railwaymsg);
        ExcelUtil<Railwaymsg> util = new ExcelUtil<Railwaymsg>(Railwaymsg.class);
        util.exportExcel(response, list, "检票口列车信息数据");
    }

    /**
     * 获取检票口列车信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('railwayplatmsg:railwayplatmsg:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(railwaymsgService.selectRailwaymsgById(id));
    }

    /**
     * 新增检票口列车信息
     */
    @PreAuthorize("@ss.hasPermi('railwayplatmsg:railwayplatmsg:add')")
    @Log(title = "检票口列车信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Railwaymsg railwaymsg)
    {
        return toAjax(railwaymsgService.insertRailwaymsg(railwaymsg));
    }

    /**
     * 修改检票口列车信息
     */
    @PreAuthorize("@ss.hasPermi('railwayplatmsg:railwayplatmsg:edit')")
    @Log(title = "检票口列车信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Railwaymsg railwaymsg)
    {
        return toAjax(railwaymsgService.updateRailwaymsg(railwaymsg));
    }

    /**
     * 删除检票口列车信息
     */
    @PreAuthorize("@ss.hasPermi('railwayplatmsg:railwayplatmsg:remove')")
    @Log(title = "检票口列车信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(railwaymsgService.deleteRailwaymsgByIds(ids));
    }
}
