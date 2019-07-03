package com.zh.mapper;

import com.zh.pojo.Gorder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GorderMapper {
    List<Gorder> queryAll();

    List<Gorder> queryBygId(@Param("goid")String goid);

    int delete(@Param("goid")Integer goid);

    void saveGorder(Gorder gorder);

    boolean updateGorder(Gorder gorder);

    Gorder findGorderById(Integer id);
}
