package com.zh.mapper;

import com.zh.pojo.Route;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RouteMapper {
    List<Route> queryAll();

    List<Route> queryByRadd(@Param("Radd") String radd);

    int delete(@Param("Rid") Integer rid);

    void saveRoute(Route route);

    boolean updateRoute(Route route);

    Route findRouteById(int rid);
}
