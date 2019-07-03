package com.zh.service.impl;

import com.zh.mapper.GoodsMapper;
import com.zh.pojo.Goods;
import com.zh.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("goodsService")
public class Goodsserviceimpl implements GoodsService {

    @Autowired
    private GoodsMapper goodsMapper;

    @Override
    public List<Goods> queryAll() {
        return goodsMapper.queryAll();
    }

    @Override
    public List<Goods> queryByGname(String Gname) {
        return goodsMapper.queryByGname(Gname);
    }

    @Override
    public boolean delete(Integer Gid) {

        int row =  goodsMapper.delete(Gid);
        return row==1?true:false;
    }

    @Override
    public void saveGoods(Goods goods) {
        goodsMapper.saveGoods(goods);
    }

    @Override
    public boolean updateGoods(Goods goods) {

        return goodsMapper.updateGoods(goods);
    }

    @Override
    public Goods findGoodsById(int Gid) {
        Goods goods =goodsMapper.findGoodsById(Gid);
        return goods;

    }


}
