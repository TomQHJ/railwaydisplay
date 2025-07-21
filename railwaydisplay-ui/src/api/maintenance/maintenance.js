import request from '@/utils/request'

export function listAllMaintenance(query) {
  return request({
    url: '/maintenance/maintenance/listAll',
    method: 'post',
    params: query
  })
}

// 查询车站设备维护列表
export function listMaintenance(query) {
  return request({
    url: '/maintenance/maintenance/list',
    method: 'get',
    params: query
  })
}

// 查询车站设备维护详细
export function getMaintenance(logId) {
  return request({
    url: '/maintenance/maintenance/' + logId,
    method: 'get'
  })
}

// 新增车站设备维护
export function addMaintenance(data) {
  return request({
    url: '/maintenance/maintenance',
    method: 'post',
    data: data
  })
}

// 修改车站设备维护
export function updateMaintenance(data) {
  return request({
    url: '/maintenance/maintenance',
    method: 'put',
    data: data
  })
}

// 删除车站设备维护
export function delMaintenance(logId) {
  return request({
    url: '/maintenance/maintenance/' + logId,
    method: 'delete'
  })
}
