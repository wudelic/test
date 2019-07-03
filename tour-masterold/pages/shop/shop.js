// pages/shop/shop.js
Page({
  data: {
      //顶部轮播图
      imgUrls: [
        '../../images/shop/5.png',
        '../../images/shop/6.png',
        '../../images/shop/1.png'
      ],
    //第二部分数据数组
    contentImgUrls: [
      {
        title: '水杯 50000金币',
        url: '../../images/shop/1.png',
        
      }, {
        title: 'USB鼠标 50000金币',
        url: '../../images/shop/2.png',
        
      }, {
        title: '300-20抵用卷 \n80000金币',
        url: '../../images/shop/3.jpg',
        
      }, {
        title: '500-40抵用卷 \n90000金币',
        url: '../../images/shop/4.jpg',
       
      }
    ]
  },
  adddetial: function () {
    wx.navigateTo({
      url: "../personal2/personal2",
      success: function (res) { },
      fail: function (res) { },
      complete: function (res) { },
    })
  }
  })