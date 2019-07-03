package com.zh.service;

import com.zh.pojo.Gorder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GorderService {
    List<Gorder> queryAll();

    List<Gorder> queryBygId(@Param("goid")String goid);

    boolean delete(Integer goid);

    void saveGorder(Gorder gorder);

    boolean updateGorder(Gorder gorder);

    Gorder findGorderById(Integer id);
}
