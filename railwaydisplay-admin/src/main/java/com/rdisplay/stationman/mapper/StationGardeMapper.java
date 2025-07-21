package com.rdisplay.stationman.mapper;

import java.util.List;
import com.rdisplay.stationman.domain.StationGarde;

/**
 * 车站等级Mapper接口
 * 
 * @author admin
 * @date 2025-07-15
 */
public interface StationGardeMapper 
{
    /**
     * 查询车站等级
     * 
     * @param stationGardeNum 车站等级主键
     * @return 车站等级
     */
    public StationGarde selectStationGardeByStationGardeNum(Long stationGardeNum);

    /**
     * 查询车站等级列表
     * 
     * @param stationGarde 车站等级
     * @return 车站等级集合
     */
    public List<StationGarde> selectStationGardeList(StationGarde stationGarde);

    /**
     * 新增车站等级
     * 
     * @param stationGarde 车站等级
     * @return 结果
     */
    public int insertStationGarde(StationGarde stationGarde);

    /**
     * 修改车站等级
     * 
     * @param stationGarde 车站等级
     * @return 结果
     */
    public int updateStationGarde(StationGarde stationGarde);

    /**
     * 删除车站等级
     * 
     * @param stationGardeNum 车站等级主键
     * @return 结果
     */
    public int deleteStationGardeByStationGardeNum(Long stationGardeNum);

    /**
     * 批量删除车站等级
     * 
     * @param stationGardeNums 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteStationGardeByStationGardeNums(Long[] stationGardeNums);
}
