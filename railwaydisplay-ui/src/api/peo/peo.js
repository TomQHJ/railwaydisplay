import request from '@/utils/request'

// 查询全部信息
export function listAll(query) {
  return request({
    url: '/peo/peo/listAll',
    method: 'post',
    params: query
  })
}

// 查询车站今日列车客流信息列表
export function listPeo(query) {
  return request({
    url: '/peo/peo/list',
    method: 'get',
    params: query
  })
}

// 查询车站今日列车客流信息详细
export function getPeo(id) {
  return request({
    url: '/peo/peo/' + id,
    method: 'get'
  })
}

// 新增车站今日列车客流信息
export function addPeo(data) {
  return request({
    url: '/peo/peo',
    method: 'post',
    data: data
  })
}

// 修改车站今日列车客流信息
export function updatePeo(data) {
  return request({
    url: '/peo/peo',
    method: 'put',
    data: data
  })
}

// 删除车站今日列车客流信息
export function delPeo(id) {
  return request({
    url: '/peo/peo/' + id,
    method: 'delete'
  })
}
