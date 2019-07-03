// pages/destination/destination.js
Page({
  data:{
    hotcity:["热门","周边","香港","澳门","海南","DIY设计"],
    nearbyCity:["昆明","红河","西双版纳","大理","文山","楚雄","丽江","香港"],
    active:5,
    hotView:[{
      title:"大理三塔",
      imgUrl:"/images/destination/view1.png"
    },{
      title:"丽江古城",
      imgUrl:"/images/destination/view2.png"
    },{
      title:"昆明石林",
      imgUrl:"/images/destination/view3.png"
    },{
      title:"丘北普者黑",
      imgUrl:"/images/destination/view4.png"
    }]
  },
  activeClick (e){
    let index=e.currentTarget.dataset.index;
     this.setData({
       active:index
     })
  },
    // 进入景点详情
  enterDetail(e) {
    let sid=e.currentTarget.dataset.id;
    wx.navigateTo({
      url: '../index/view-detail/view-detail?sid='+sid+''
    })
  },
  enterCity(e){
    let cityname=e.currentTarget.dataset.cityname;
    wx.navigateTo({
      url: 'cityView/cityView?cityname='+cityname+''
    })
  },

  
 onTap: function (){
    wx.navigateTo({
      url: "regions/region",
    })
  },
  adddetial: function () {
    wx.navigateTo({
      url: "/pages/personal/personal",
      success: function (res) { },
      fail: function (res) { },
      complete: function (res) { },
    })
  },
      bindMinus: function() {  
        var num = this.data.num;  
        // 如果大于1时，才可以减  
        if (num > 1) {  
            num --;  
        }  
        // 只有大于一件的时候，才能normal状态，否则disable状态  
        var minusStatus = num <= 1 ? 'disabled' : 'normal';  
        // 将数值与状态写回  
        this.setData({  
            num: num,  
            minusStatus: minusStatus  
        });  
    },  
    /* 点击加号 */  
    bindPlus: function() {  
        var num = this.data.num;  
        // 不作过多考虑自增1  
        num ++;  
        // 只有大于一件的时候，才能normal状态，否则disable状态  
        var minusStatus = num < 1 ? 'disabled' : 'normal';  
        // 将数值与状态写回  
        this.setData({  
            num: num,  
            minusStatus: minusStatus  
        });  
    },  
    /* 输入框事件 */  
    bindManual: function(e) {  
        var num = e.detail.value;  
        // 将数值与状态写回  
        this.setData({  
            num: num  
        });  
    } ,

    adddetial: function () {
    wx.navigateTo({
      url: "../personal2/personal2",
      success: function (res) { },
      fail: function (res) { },
      complete: function (res) { },
    })
  },
  
})