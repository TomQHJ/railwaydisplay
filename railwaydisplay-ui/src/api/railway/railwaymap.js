import request from '@/utils/request'

// 查询列车运行图列表
export function listRailwaymap(query) {
  return request({
    url: '/railway/railwaymap/list',
    method: 'get',
    params: query
  })
}

// 查询列车运行图详细
export function getRailwaymap(id) {
  return request({
    url: '/railway/railwaymap/' + id,
    method: 'get'
  })
}

// 查询列车运行图详细
export function getRailwaymapByTrainNum(trainNum) {
  return request({
    url: '/railway/railwaymap/' + trainNum,
    method: 'post'
  })
}

// 新增列车运行图
export function addRailwaymap(data) {
  return request({
    url: '/railway/railwaymap',
    method: 'post',
    data: data
  })
}

// 修改列车运行图
export function updateRailwaymap(data) {
  return request({
    url: '/railway/railwaymap',
    method: 'put',
    data: data
  })
}

// 删除列车运行图
export function delRailwaymap(id) {
  return request({
    url: '/railway/railwaymap/' + id,
    method: 'delete'
  })
}
