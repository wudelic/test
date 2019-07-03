package com.zh.service;

import com.zh.pojo.Goods;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface GoodsService {

    List<Goods> queryAll();

    List<Goods> queryByGname(@Param("Gname") String Gname);

    boolean delete(Integer Gid);

    void saveGoods(Goods goods);
    boolean updateGoods(Goods goods);
    Goods findGoodsById(int Gid);


}
