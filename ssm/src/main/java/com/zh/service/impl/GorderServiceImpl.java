package com.zh.service.impl;

import com.zh.mapper.GoodsMapper;
import com.zh.mapper.GorderMapper;
import com.zh.pojo.Gorder;
import com.zh.service.GorderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("gorderService")
public class GorderServiceImpl implements GorderService {
    @Autowired
    private GorderMapper gorderMapper;
    @Override
    public List<Gorder> queryAll() {
        return gorderMapper.queryAll();
    }

    @Override
    public List<Gorder> queryBygId(String goid) {
        return gorderMapper.queryBygId(goid);
    }

    @Override
    public boolean delete(Integer goid) {
        int row =  gorderMapper.delete(goid);
        return row==1?true:false;

    }

    @Override
    public void saveGorder(Gorder gorder) {
            gorderMapper.saveGorder(gorder);
    }

    @Override
    public boolean updateGorder(Gorder gorder) {
        return gorderMapper.updateGorder(gorder);
    }

    @Override
    public Gorder findGorderById(Integer id) {
        Gorder gorder = gorderMapper.findGorderById(id);
        return gorder;
    }
}
