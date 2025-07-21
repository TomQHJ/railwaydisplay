import request from '@/utils/request'

// 查询今日车次大屏列表
export function listAll(query) {
  return request({
    url: '/railwaytoday/railwaytoday/listAll',
    method: 'post',
    params: query
  })
}

// 查询今日车次大屏列表
export function listRailwaytoday(query) {
  return request({
    url: '/railwaytoday/railwaytoday/list',
    method: 'get',
    params: query
  })
}

// 查询今日车次大屏详细
export function getRailwaytoday(id) {
  return request({
    url: '/railwaytoday/railwaytoday/' + id,
    method: 'get'
  })
}

// 新增今日车次大屏
export function addRailwaytoday(data) {
  return request({
    url: '/railwaytoday/railwaytoday',
    method: 'post',
    data: data
  })
}

// 修改今日车次大屏
export function updateRailwaytoday(data) {
  return request({
    url: '/railwaytoday/railwaytoday',
    method: 'put',
    data: data
  })
}

// 删除今日车次大屏
export function delRailwaytoday(id) {
  return request({
    url: '/railwaytoday/railwaytoday/' + id,
    method: 'delete'
  })
}
