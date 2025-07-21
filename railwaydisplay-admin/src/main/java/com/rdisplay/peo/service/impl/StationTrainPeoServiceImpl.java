package com.rdisplay.peo.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rdisplay.peo.mapper.StationTrainPeoMapper;
import com.rdisplay.peo.domain.StationTrainPeo;
import com.rdisplay.peo.service.IStationTrainPeoService;

/**
 * 车站今日列车客流信息Service业务层处理
 * 
 * @author admin
 * @date 2025-07-14
 */
@Service
public class StationTrainPeoServiceImpl implements IStationTrainPeoService 
{
    @Autowired
    private StationTrainPeoMapper stationTrainPeoMapper;

    /**
     * 查询车站今日列车客流信息
     * 
     * @param id 车站今日列车客流信息主键
     * @return 车站今日列车客流信息
     */
    @Override
    public StationTrainPeo selectStationTrainPeoById(Integer id)
    {
        return stationTrainPeoMapper.selectStationTrainPeoById(id);
    }

    /**
     * 查询车站今日列车客流信息列表
     * 
     * @param stationTrainPeo 车站今日列车客流信息
     * @return 车站今日列车客流信息
     */
    @Override
    public List<StationTrainPeo> selectStationTrainPeoList(StationTrainPeo stationTrainPeo)
    {
        return stationTrainPeoMapper.selectStationTrainPeoList(stationTrainPeo);
    }

    /**
     * 新增车站今日列车客流信息
     * 
     * @param stationTrainPeo 车站今日列车客流信息
     * @return 结果
     */
    @Override
    public int insertStationTrainPeo(StationTrainPeo stationTrainPeo)
    {
        return stationTrainPeoMapper.insertStationTrainPeo(stationTrainPeo);
    }

    /**
     * 修改车站今日列车客流信息
     * 
     * @param stationTrainPeo 车站今日列车客流信息
     * @return 结果
     */
    @Override
    public int updateStationTrainPeo(StationTrainPeo stationTrainPeo)
    {
        return stationTrainPeoMapper.updateStationTrainPeo(stationTrainPeo);
    }

    /**
     * 批量删除车站今日列车客流信息
     * 
     * @param ids 需要删除的车站今日列车客流信息主键
     * @return 结果
     */
    @Override
    public int deleteStationTrainPeoByIds(Integer[] ids)
    {
        return stationTrainPeoMapper.deleteStationTrainPeoByIds(ids);
    }

    /**
     * 删除车站今日列车客流信息信息
     * 
     * @param id 车站今日列车客流信息主键
     * @return 结果
     */
    @Override
    public int deleteStationTrainPeoById(Integer id)
    {
        return stationTrainPeoMapper.deleteStationTrainPeoById(id);
    }
}
