package com.zh.mapper;

import com.zh.pojo.Rorder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RorderMapper {
    List<Rorder> queryAll();

    List<Rorder> queryByrId(@Param("roid") String roid);

    int delete(@Param("roid") Integer roid);

    void saveRorder(Rorder rorder);

    boolean updateRorder(Rorder rorder);

    Rorder findRorderById(int id);

    void ConsumeraddRorder(Rorder rorder);

    List<Rorder> findRorderByUid(String uid);
}
