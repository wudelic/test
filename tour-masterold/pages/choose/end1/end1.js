// pages/choose/end1/end1.js

const app = getApp()
Page({
  formSubmit1: function() {
    wx.navigateTo({
      url: '../end/end',
    })
  },
  data: {
    routers: [{
        name: '刘海洋',
        url: '/pages/Course/course',
        icon: '/images/1.jpg',
        code: '10'
      },
      {
        name: '赵海',
        url: '/pages/Course/course',
        icon: '/images/2.jpg',
        code: '11'
      },
      {
        name: '陈丽丽',
        url: '/pages/Course/course',
        icon: '/images/3.jpg',
        code: '10'
      },
      {
        name: '赵海天',
        icon: '/images/6.jpg',
        code: '11'
      }, {
        name: '赖浩光',
        url: '/pages/Course/course',
        icon: '/images/5.jpg',
        code: '10'
      }, {
        name: '何宏波',
        icon: '/images/6.jpg',
        code: '11'
      }, {
        name: '李浩天',
        url: '/pages/Course/course',
        icon: '/images/1.jpg',
        code: '10'
      }, {
        name: '陈浩文',
        icon: '/images/6.jpg',
        code: '11'
      }, {
        name: '林安然',
        url: '/pages/guide/guide',
        icon: '/images/9.jpg',
        code: '10'
      }
    ]
  },
  onLoad: function() {
    console.log('onLoad')
     var that = this
  }


})