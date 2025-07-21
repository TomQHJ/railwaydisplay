package com.rdisplay.peo.service;

import java.util.List;
import com.rdisplay.peo.domain.StationTrainPeo;

/**
 * 车站今日列车客流信息Service接口
 * 
 * @author admin
 * @date 2025-07-14
 */
public interface IStationTrainPeoService 
{
    /**
     * 查询车站今日列车客流信息
     * 
     * @param id 车站今日列车客流信息主键
     * @return 车站今日列车客流信息
     */
    public StationTrainPeo selectStationTrainPeoById(Integer id);

    /**
     * 查询车站今日列车客流信息列表
     * 
     * @param stationTrainPeo 车站今日列车客流信息
     * @return 车站今日列车客流信息集合
     */
    public List<StationTrainPeo> selectStationTrainPeoList(StationTrainPeo stationTrainPeo);

    /**
     * 新增车站今日列车客流信息
     * 
     * @param stationTrainPeo 车站今日列车客流信息
     * @return 结果
     */
    public int insertStationTrainPeo(StationTrainPeo stationTrainPeo);

    /**
     * 修改车站今日列车客流信息
     * 
     * @param stationTrainPeo 车站今日列车客流信息
     * @return 结果
     */
    public int updateStationTrainPeo(StationTrainPeo stationTrainPeo);

    /**
     * 批量删除车站今日列车客流信息
     * 
     * @param ids 需要删除的车站今日列车客流信息主键集合
     * @return 结果
     */
    public int deleteStationTrainPeoByIds(Integer[] ids);

    /**
     * 删除车站今日列车客流信息信息
     * 
     * @param id 车站今日列车客流信息主键
     * @return 结果
     */
    public int deleteStationTrainPeoById(Integer id);
}
