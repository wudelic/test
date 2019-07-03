// pages/choose/end/end.js
var app = getApp()
Page({
  formSubmit1: function () {
    wx.switchTab({
      url: '../../hudong/hudong',
    })
    wx.showToast({
      title: '成功',
      icon:'success',
      duration:2000
    })
  }
})  