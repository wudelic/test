package com.zh.mapper;


import com.zh.pojo.Goods;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsMapper {

    List<Goods> queryAll();


    List<Goods> queryByGname(@Param("Gname") String Gname);

    int delete(@Param("Gid") Integer Gid);

    void saveGoods(Goods goods);

    boolean updateGoods(Goods goods);

    Goods findGoodsById(int Gid);
}
