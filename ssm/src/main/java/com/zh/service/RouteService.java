package com.zh.service;

import com.zh.pojo.Route;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RouteService {
    List<Route> queryAll();

    List<Route> queryByRadd(@Param("Radd") String Radd);

    boolean delete(Integer rid);

    void saveRoute(Route route);

    boolean updateRoute(Route route);

    Route findRouteById(int rid);
}
