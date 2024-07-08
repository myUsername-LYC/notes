import request from '@/utils/request'

// 登录
export function login(username, password) {
 // debugger
  return request({
    url: '/service-ums/acl/login',
    method: 'post',
    data: {
      username,
      password
    }
  })
}

// 获取用户信息
export function getInfo(token) {
  return request({
    url: '/service-ums/acl/index/info',
    method: 'get',
    params: { token }
  })
}

// 登出
export function logout() {
  return request({
    url: '/service-ums/acl/index/logout',
    method: 'post'
  })
}

// 获取菜单权限数据
export function getMenu() {
  return request({
    url: '/service-ums/acl/index/menu',
    method: 'get'
  })
}
