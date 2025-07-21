import request from '@/utils/request'

export function listAllStation(query){
  return request({
    url: '/stationman/station/listAll',
    method: 'post',
    // params: query
  })
}

// 查询车站信息管理列表
export function listStation(query) {
  return request({
    url: '/stationman/station/list',
    method: 'get',
    params: query
  })
}

// 查询车站信息管理详细
export function getStation(stationNum) {
  return request({
    url: '/stationman/station/' + stationNum,
    method: 'get'
  })
}

// 新增车站信息管理
export function addStation(data) {
  return request({
    url: '/stationman/station',
    method: 'post',
    data: data
  })
}

// 修改车站信息管理
export function updateStation(data) {
  return request({
    url: '/stationman/station',
    method: 'put',
    data: data
  })
}

// 删除车站信息管理
export function delStation(stationNum) {
  return request({
    url: '/stationman/station/' + stationNum,
    method: 'delete'
  })
}
