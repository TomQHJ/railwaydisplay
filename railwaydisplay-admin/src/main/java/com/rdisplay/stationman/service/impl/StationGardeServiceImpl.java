package com.rdisplay.stationman.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rdisplay.stationman.mapper.StationGardeMapper;
import com.rdisplay.stationman.domain.StationGarde;
import com.rdisplay.stationman.service.IStationGardeService;

/**
 * 车站等级Service业务层处理
 * 
 * @author admin
 * @date 2025-07-15
 */
@Service
public class StationGardeServiceImpl implements IStationGardeService 
{
    @Autowired
    private StationGardeMapper stationGardeMapper;

    /**
     * 查询车站等级
     * 
     * @param stationGardeNum 车站等级主键
     * @return 车站等级
     */
    @Override
    public StationGarde selectStationGardeByStationGardeNum(Long stationGardeNum)
    {
        return stationGardeMapper.selectStationGardeByStationGardeNum(stationGardeNum);
    }

    /**
     * 查询车站等级列表
     * 
     * @param stationGarde 车站等级
     * @return 车站等级
     */
    @Override
    public List<StationGarde> selectStationGardeList(StationGarde stationGarde)
    {
        return stationGardeMapper.selectStationGardeList(stationGarde);
    }

    /**
     * 新增车站等级
     * 
     * @param stationGarde 车站等级
     * @return 结果
     */
    @Override
    public int insertStationGarde(StationGarde stationGarde)
    {
        return stationGardeMapper.insertStationGarde(stationGarde);
    }

    /**
     * 修改车站等级
     * 
     * @param stationGarde 车站等级
     * @return 结果
     */
    @Override
    public int updateStationGarde(StationGarde stationGarde)
    {
        return stationGardeMapper.updateStationGarde(stationGarde);
    }

    /**
     * 批量删除车站等级
     * 
     * @param stationGardeNums 需要删除的车站等级主键
     * @return 结果
     */
    @Override
    public int deleteStationGardeByStationGardeNums(Long[] stationGardeNums)
    {
        return stationGardeMapper.deleteStationGardeByStationGardeNums(stationGardeNums);
    }

    /**
     * 删除车站等级信息
     * 
     * @param stationGardeNum 车站等级主键
     * @return 结果
     */
    @Override
    public int deleteStationGardeByStationGardeNum(Long stationGardeNum)
    {
        return stationGardeMapper.deleteStationGardeByStationGardeNum(stationGardeNum);
    }
}
