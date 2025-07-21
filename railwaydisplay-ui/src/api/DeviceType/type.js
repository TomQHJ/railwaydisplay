import request from '@/utils/request'

// 查询设备类型字段列表
export function listAllType(query) {
  return request({
    url: '/DeviceType/type/listAll',
    method: 'get',
    params: query
  })
}

// 查询设备类型字段列表
export function listType(query) {
  return request({
    url: '/DeviceType/type/list',
    method: 'get',
    params: query
  })
}

// 查询设备类型字段详细
export function getType(stationDeviceId) {
  return request({
    url: '/DeviceType/type/' + stationDeviceId,
    method: 'get'
  })
}

// 新增设备类型字段
export function addType(data) {
  return request({
    url: '/DeviceType/type',
    method: 'post',
    data: data
  })
}

// 修改设备类型字段
export function updateType(data) {
  return request({
    url: '/DeviceType/type',
    method: 'put',
    data: data
  })
}

// 删除设备类型字段
export function delType(stationDeviceId) {
  return request({
    url: '/DeviceType/type/' + stationDeviceId,
    method: 'delete'
  })
}
