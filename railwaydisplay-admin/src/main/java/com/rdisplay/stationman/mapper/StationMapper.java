package com.rdisplay.stationman.mapper;

import java.util.List;
import com.rdisplay.stationman.domain.Station;

/**
 * 车站信息管理Mapper接口
 * 
 * @author admin
 * @date 2025-07-10
 */
public interface StationMapper 
{
    /**
     * 查询车站信息管理
     * 
     * @param stationNum 车站信息管理主键
     * @return 车站信息管理
     */
    public Station selectStationByStationNum(Integer stationNum);

    /**
     * 查询车站信息管理列表
     * 
     * @param station 车站信息管理
     * @return 车站信息管理集合
     */
    public List<Station> selectStationList(Station station);

    /**
     * 新增车站信息管理
     * 
     * @param station 车站信息管理
     * @return 结果
     */
    public int insertStation(Station station);

    /**
     * 修改车站信息管理
     * 
     * @param station 车站信息管理
     * @return 结果
     */
    public int updateStation(Station station);

    /**
     * 删除车站信息管理
     * 
     * @param stationNum 车站信息管理主键
     * @return 结果
     */
    public int deleteStationByStationNum(Integer stationNum);

    /**
     * 批量删除车站信息管理
     * 
     * @param stationNums 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteStationByStationNums(Integer[] stationNums);
}
