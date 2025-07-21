import request from '@/utils/request'

// 查询车站设备列表
export function listAllDevice(query) {
  return request({
    url: '/device/device/listAll',
    method: 'post',
    params: query
  })
}

// 查询车站设备列表
export function listDevice(query) {
  return request({
    url: '/device/device/list',
    method: 'get',
    params: query
  })
}

// 查询车站设备详细
export function getDevice(deviceId) {
  return request({
    url: '/device/device/' + deviceId,
    method: 'get'
  })
}

// 新增车站设备
export function addDevice(data) {
  return request({
    url: '/device/device',
    method: 'post',
    data: data
  })
}

// 修改车站设备
export function updateDevice(data) {
  return request({
    url: '/device/device',
    method: 'put',
    data: data
  })
}

// 删除车站设备
export function delDevice(deviceId) {
  return request({
    url: '/device/device/' + deviceId,
    method: 'delete'
  })
}
