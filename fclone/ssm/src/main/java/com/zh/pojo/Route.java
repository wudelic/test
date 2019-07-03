package com.zh.pojo;

import java.util.List;

/**
 * 线路表
 */
public class Route {
    private Integer Rid;
    private Double Rmoney;
    private String Rdetail;
    private String Radd;
    private String Rimg;
    private String Rtype;

    private List<Route> Routes;

    public Integer getRid() {
        return Rid;
    }

    public void setRid(Integer rid) {
        Rid = rid;
    }

    public Double getRmoney() {
        return Rmoney;
    }

    public void setRmoney(Double rmoney) {
        Rmoney = rmoney;
    }

    public String getRdetail() {
        return Rdetail;
    }

    public void setRdetail(String rdetail) {
        Rdetail = rdetail;
    }

    public String getRadd() {
        return Radd;
    }

    public void setRadd(String radd) {
        Radd = radd;
    }

    public String getRimg() {
        return Rimg;
    }

    public void setRimg(String rimg) {
        Rimg = rimg;
    }

    public String getRtype() {
        return Rtype;
    }

    public void setRtype(String rtype) {
        Rtype = rtype;
    }

    public List<Route> getRoutes() {
        return Routes;
    }

    public void setRoutes(List<Route> Routes) {
        this.Routes = Routes;
    }
}
