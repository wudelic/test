package com.zh.pojo;

import java.util.List;

/**
 * 商品表
 */
public class Goods {
    private Integer Gid;
    private String Gname;
    private Double Gprice;
    private String Gtype;
    private String Grest;
    private String Gdetail;
    private String Gimg;
    public List<Goods> goods;

    public String getGimg() {
        return Gimg;
    }

    public void setGimg(String gimg) {
        Gimg = gimg;
    }



    public List<Goods> getGoods() {
        return goods;
    }

    public void setGoods(List<Goods> goods) {
        this.goods = goods;
    }

    public Integer getGid() {
        return Gid;
    }

    public void setGid(Integer gid) {
        Gid = gid;
    }

    public String getGname() {
        return Gname;
    }

    public void setGname(String gname) {
        Gname = gname;
    }

    public Double getGprice() {
        return Gprice;
    }

    public void setGprice(Double gprice) {
        Gprice = gprice;
    }

    public String getGtype() {
        return Gtype;
    }

    public void setGtype(String gtype) {
        Gtype = gtype;
    }

    public String getGrest() {
        return Grest;
    }

    public void setGrest(String grest) {
        Grest = grest;
    }

    public String getGdetail() {
        return Gdetail;
    }

    public void setGdetail(String gdetail) {
        Gdetail = gdetail;
    }
}
