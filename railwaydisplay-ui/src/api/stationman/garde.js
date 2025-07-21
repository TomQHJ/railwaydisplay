import request from '@/utils/request'

// 查询车站等级列表
export function listAllGarde(query) {
  return request({
    url: '/stationman/garde/listAll',
    method: 'post',
    params: query
  })
}

// 查询车站等级列表
export function listGarde(query) {
  return request({
    url: '/stationman/garde/list',
    method: 'get',
    params: query
  })
}

// 查询车站等级详细
export function getGarde(stationGardeNum) {
  return request({
    url: '/stationman/garde/' + stationGardeNum,
    method: 'get'
  })
}

// 新增车站等级
export function addGarde(data) {
  return request({
    url: '/stationman/garde',
    method: 'post',
    data: data
  })
}

// 修改车站等级
export function updateGarde(data) {
  return request({
    url: '/stationman/garde',
    method: 'put',
    data: data
  })
}

// 删除车站等级
export function delGarde(stationGardeNum) {
  return request({
    url: '/stationman/garde/' + stationGardeNum,
    method: 'delete'
  })
}
