import request from '@/utils/request'

export function listAllStationmsg(query){
  return request({
    url: '/stationman/stationmsg/listAll',
    method: 'post',
    // params: query
  })
}

// 查询车站发送人数列表
export function listStationmsg(query) {
  return request({
    url: '/stationman/stationmsg/list',
    method: 'get',
    params: query
  })
}

// 查询车站发送人数详细
export function getStationmsg(id) {
  return request({
    url: '/stationman/stationmsg/' + id,
    method: 'get'
  })
}

// 新增车站发送人数
export function addStationmsg(data) {
  return request({
    url: '/stationman/stationmsg',
    method: 'post',
    data: data
  })
}

// 修改车站发送人数
export function updateStationmsg(data) {
  return request({
    url: '/stationman/stationmsg',
    method: 'put',
    data: data
  })
}

// 删除车站发送人数
export function delStationmsg(id) {
  return request({
    url: '/stationman/stationmsg/' + id,
    method: 'delete'
  })
}
