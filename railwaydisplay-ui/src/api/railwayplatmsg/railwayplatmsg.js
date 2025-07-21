import request from '@/utils/request'

// 查询检票口列车信息列表
export function listAllRailwayplatmsg(query) {
  return request({
    url: '/railwayplatmsg/railwayplatmsg/listAll',
    method: 'post',
    params: query
  })
}


// 查询检票口列车信息列表
export function listRailwayplatmsg(query) {
  return request({
    url: '/railwayplatmsg/railwayplatmsg/list',
    method: 'get',
    params: query
  })
}

// 查询检票口列车信息详细
export function getRailwayplatmsg(id) {
  return request({
    url: '/railwayplatmsg/railwayplatmsg/' + id,
    method: 'get'
  })
}

// 新增检票口列车信息
export function addRailwayplatmsg(data) {
  return request({
    url: '/railwayplatmsg/railwayplatmsg',
    method: 'post',
    data: data
  })
}

// 修改检票口列车信息
export function updateRailwayplatmsg(data) {
  return request({
    url: '/railwayplatmsg/railwayplatmsg',
    method: 'put',
    data: data
  })
}

// 删除检票口列车信息
export function delRailwayplatmsg(id) {
  return request({
    url: '/railwayplatmsg/railwayplatmsg/' + id,
    method: 'delete'
  })
}
