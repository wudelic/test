package com.zh.service;

import com.zh.pojo.Rorder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RorderService {
    List<Rorder> queryAll();

    List<Rorder> queryByrId(@Param("roid") String roid);

    boolean delete(Integer roid);

    void saveRorder(Rorder rorder);

    boolean updateRorder(Rorder rorder);

    Rorder findRorderById(int id);

    void ConsumeraddRorder(Rorder rorder);

    List<Rorder> findRorderByUid(String uid);
}
