package com.zh.mapper;

import com.zh.pojo.Consumer;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ConsumerMapper {

    List<Consumer> queryAll();

    List<Consumer> queryByUsername(@Param("username") String username);

    int delete(@Param("id") Integer id);

    int existsUsername(@Param("username") String username);

    Consumer queryByUserpwd(@Param("username") String username,@Param("password") String password);

    void add(Consumer consumer);

    void modifyPwd(@Param("username") String username, @Param("newpassword") String password);

    int modifyPasswordByUsername(Consumer consumer);
    Consumer findUsersByUsername(String username);

    void saveConsumer(Consumer consumer);
    boolean updateConsumer(Consumer consumer);
    Consumer findConsumerById(int id);

}
