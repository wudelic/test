package com.zh.service.impl;

import com.zh.mapper.RorderMapper;
import com.zh.pojo.Rorder;
import com.zh.service.RorderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("rorderService")
public class RorderServiceImpl implements RorderService {
    @Autowired
    private RorderMapper rorderMapper;
    @Override
    public List<Rorder> queryAll() {
        return rorderMapper.queryAll();
    }

    @Override
    public List<Rorder> queryByrId(String roid) {
        return rorderMapper.queryByrId(roid);
    }

    @Override
    public boolean delete(Integer roid) {
        int row =  rorderMapper.delete(roid);
        return row==1?true:false;
    }

    @Override
    public void saveRorder(Rorder rorder) {
        rorderMapper.saveRorder(rorder);
    }

    @Override
    public boolean updateRorder(Rorder rorder) {
        return rorderMapper.updateRorder(rorder);
    }

    @Override
    public Rorder findRorderById(int id) {
        Rorder rorder = rorderMapper.findRorderById(id);
        return rorder;
    }

    @Override
    public void ConsumeraddRorder(Rorder rorder) {
        rorderMapper.ConsumeraddRorder(rorder);
    }

    @Override
    public List<Rorder> findRorderByUid(String uid) {
        return rorderMapper.findRorderByUid(uid);
    }
}
