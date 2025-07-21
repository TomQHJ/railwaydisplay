import request from '@/utils/request'


export function listAll(query) {
  return request({
    url: '/railwayticket/railwayticket/listAll',
    method: 'post',
    params: query
  })
}

// 查询列车状态-（检票状态，运行状态）列表
export function listRailwayticket(query) {
  return request({
    url: '/railwayticket/railwayticket/list',
    method: 'get',
    params: query
  })
}

// 查询列车状态-（检票状态，运行状态）详细
export function getRailwayticket(railwayStateNum) {
  return request({
    url: '/railwayticket/railwayticket/' + railwayStateNum,
    method: 'get'
  })
}

// 新增列车状态-（检票状态，运行状态）
export function addRailwayticket(data) {
  return request({
    url: '/railwayticket/railwayticket',
    method: 'post',
    data: data
  })
}

// 修改列车状态-（检票状态，运行状态）
export function updateRailwayticket(data) {
  return request({
    url: '/railwayticket/railwayticket',
    method: 'put',
    data: data
  })
}

// 删除列车状态-（检票状态，运行状态）
export function delRailwayticket(railwayStateNum) {
  return request({
    url: '/railwayticket/railwayticket/' + railwayStateNum,
    method: 'delete'
  })
}
