package com.zh.service.impl;

import com.zh.mapper.RouteMapper;
import com.zh.pojo.Route;
import com.zh.service.RouteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("routeService")
public class RouteServiceImpl implements RouteService {

    @Autowired
    private RouteMapper routeMapper;
    @Override
    public List<Route> queryAll() {
        return routeMapper.queryAll();
    }

    @Override
    public List<Route> queryByRadd(String Radd) {
        return routeMapper.queryByRadd(Radd);
    }

    @Override
    public boolean delete(Integer rid) {
        int row =  routeMapper.delete(rid);
        return row==1?true:false;
    }

    @Override
    public void saveRoute(Route route) {
        routeMapper.saveRoute(route);
    }

    @Override
    public boolean updateRoute(Route route) {
        return routeMapper.updateRoute(route);
    }

    @Override
    public Route findRouteById(int Rid) {
        Route route = routeMapper.findRouteById(Rid);
        return route;
    }
}
