import request from '@/utils/request'

// 查询站台信息列表
export function listRplatmsg(query) {
  return request({
    url: '/rplatmsg/rplatmsg/list',
    method: 'get',
    params: query
  })
}

// 查询站台信息详细
export function getRplatmsg(platNum) {
  return request({
    url: '/rplatmsg/rplatmsg/' + platNum,
    method: 'get'
  })
}

// 新增站台信息
export function addRplatmsg(data) {
  return request({
    url: '/rplatmsg/rplatmsg',
    method: 'post',
    data: data
  })
}

// 修改站台信息
export function updateRplatmsg(data) {
  return request({
    url: '/rplatmsg/rplatmsg',
    method: 'put',
    data: data
  })
}

// 删除站台信息
export function delRplatmsg(platNum) {
  return request({
    url: '/rplatmsg/rplatmsg/' + platNum,
    method: 'delete'
  })
}
