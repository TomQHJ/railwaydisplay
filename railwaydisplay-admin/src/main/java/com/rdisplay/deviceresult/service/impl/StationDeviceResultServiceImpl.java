package com.rdisplay.deviceresult.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rdisplay.deviceresult.mapper.StationDeviceResultMapper;
import com.rdisplay.deviceresult.domain.StationDeviceResult;
import com.rdisplay.deviceresult.service.IStationDeviceResultService;

/**
 * 车站设备维修处理状态Service业务层处理
 * 
 * @author admin
 * @date 2025-07-14
 */
@Service
public class StationDeviceResultServiceImpl implements IStationDeviceResultService 
{
    @Autowired
    private StationDeviceResultMapper stationDeviceResultMapper;

    /**
     * 查询车站设备维修处理状态
     * 
     * @param stationDeviceResultId 车站设备维修处理状态主键
     * @return 车站设备维修处理状态
     */
    @Override
    public StationDeviceResult selectStationDeviceResultByStationDeviceResultId(Integer stationDeviceResultId)
    {
        return stationDeviceResultMapper.selectStationDeviceResultByStationDeviceResultId(stationDeviceResultId);
    }

    /**
     * 查询车站设备维修处理状态列表
     * 
     * @param stationDeviceResult 车站设备维修处理状态
     * @return 车站设备维修处理状态
     */
    @Override
    public List<StationDeviceResult> selectStationDeviceResultList(StationDeviceResult stationDeviceResult)
    {
        return stationDeviceResultMapper.selectStationDeviceResultList(stationDeviceResult);
    }

    /**
     * 新增车站设备维修处理状态
     * 
     * @param stationDeviceResult 车站设备维修处理状态
     * @return 结果
     */
    @Override
    public int insertStationDeviceResult(StationDeviceResult stationDeviceResult)
    {
        return stationDeviceResultMapper.insertStationDeviceResult(stationDeviceResult);
    }

    /**
     * 修改车站设备维修处理状态
     * 
     * @param stationDeviceResult 车站设备维修处理状态
     * @return 结果
     */
    @Override
    public int updateStationDeviceResult(StationDeviceResult stationDeviceResult)
    {
        return stationDeviceResultMapper.updateStationDeviceResult(stationDeviceResult);
    }

    /**
     * 批量删除车站设备维修处理状态
     * 
     * @param stationDeviceResultIds 需要删除的车站设备维修处理状态主键
     * @return 结果
     */
    @Override
    public int deleteStationDeviceResultByStationDeviceResultIds(Integer[] stationDeviceResultIds)
    {
        return stationDeviceResultMapper.deleteStationDeviceResultByStationDeviceResultIds(stationDeviceResultIds);
    }

    /**
     * 删除车站设备维修处理状态信息
     * 
     * @param stationDeviceResultId 车站设备维修处理状态主键
     * @return 结果
     */
    @Override
    public int deleteStationDeviceResultByStationDeviceResultId(Integer stationDeviceResultId)
    {
        return stationDeviceResultMapper.deleteStationDeviceResultByStationDeviceResultId(stationDeviceResultId);
    }
}
