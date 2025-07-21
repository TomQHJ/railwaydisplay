package com.rdisplay.stationman.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rdisplay.stationman.mapper.StationMapper;
import com.rdisplay.stationman.domain.Station;
import com.rdisplay.stationman.service.IStationService;

/**
 * 车站信息管理Service业务层处理
 * 
 * @author admin
 * @date 2025-07-10
 */
@Service
public class StationServiceImpl implements IStationService 
{
    @Autowired
    private StationMapper stationMapper;

    /**
     * 查询车站信息管理
     * 
     * @param stationNum 车站信息管理主键
     * @return 车站信息管理
     */
    @Override
    public Station selectStationByStationNum(Integer stationNum)
    {
        return stationMapper.selectStationByStationNum(stationNum);
    }

    /**
     * 查询车站信息管理列表
     * 
     * @param station 车站信息管理
     * @return 车站信息管理
     */
    @Override
    public List<Station> selectStationList(Station station)
    {
        return stationMapper.selectStationList(station);
    }

    /**
     * 新增车站信息管理
     * 
     * @param station 车站信息管理
     * @return 结果
     */
    @Override
    public int insertStation(Station station)
    {
        return stationMapper.insertStation(station);
    }

    /**
     * 修改车站信息管理
     * 
     * @param station 车站信息管理
     * @return 结果
     */
    @Override
    public int updateStation(Station station)
    {
        return stationMapper.updateStation(station);
    }

    /**
     * 批量删除车站信息管理
     * 
     * @param stationNums 需要删除的车站信息管理主键
     * @return 结果
     */
    @Override
    public int deleteStationByStationNums(Integer[] stationNums)
    {
        return stationMapper.deleteStationByStationNums(stationNums);
    }

    /**
     * 删除车站信息管理信息
     * 
     * @param stationNum 车站信息管理主键
     * @return 结果
     */
    @Override
    public int deleteStationByStationNum(Integer stationNum)
    {
        return stationMapper.deleteStationByStationNum(stationNum);
    }
}
