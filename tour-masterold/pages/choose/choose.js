// pages/choose/choose.js
Page({

  data: {
    showModal: false
  },
  submit: function () {
    this.setData({
      showModal: true
    })
  },
  preventTouchMove: function () {
  },
  go: function () {
    this.setData({
      showModal: false
    })
  },

  formSubmit: function () {
    wx.navigateTo({
      url: 'end1/end1',
      success: function (res) { },
      fail: function (res) { },
      complete: function (res) { },
    })
  }
  
  
})
  

  
