package com.zh.service;

import com.zh.pojo.Consumer;
import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface ConsumerService {
    List<Consumer> queryAll();

    List<Consumer> queryByUsername(@Param("username") String username);

    boolean delete(Integer id);

    boolean existsUsername(String username);

    Consumer login(Consumer consumer);

    void regist(Consumer consumer);

    void modifyPwd(Consumer consumer);

    void modifyPasswordByUsername(String username,String newpassword);

    void saveConsumer(Consumer consumer);

    boolean updateConsumer(Consumer consumer);

    Consumer findConsumerById(int id);
}
