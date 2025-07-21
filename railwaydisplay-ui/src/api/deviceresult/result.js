import request from '@/utils/request'

// 查询车站设备维修处理状态列表
export function listAllResult(query) {
  return request({
    url: '/deviceresult/result/listAll',
    method: 'get',
    params: query
  })
}

// 查询车站设备维修处理状态列表
export function listResult(query) {
  return request({
    url: '/deviceresult/result/list',
    method: 'get',
    params: query
  })
}

// 查询车站设备维修处理状态详细
export function getResult(stationDeviceResultId) {
  return request({
    url: '/deviceresult/result/' + stationDeviceResultId,
    method: 'get'
  })
}

// 新增车站设备维修处理状态
export function addResult(data) {
  return request({
    url: '/deviceresult/result',
    method: 'post',
    data: data
  })
}

// 修改车站设备维修处理状态
export function updateResult(data) {
  return request({
    url: '/deviceresult/result',
    method: 'put',
    data: data
  })
}

// 删除车站设备维修处理状态
export function delResult(stationDeviceResultId) {
  return request({
    url: '/deviceresult/result/' + stationDeviceResultId,
    method: 'delete'
  })
}
