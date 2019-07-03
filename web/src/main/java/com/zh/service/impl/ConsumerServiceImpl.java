package com.zh.service.impl;

import com.zh.mapper.ConsumerMapper;
import com.zh.pojo.Consumer;
import com.zh.service.ConsumerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("consumerService")
public class ConsumerServiceImpl implements ConsumerService {

    @Autowired
    private ConsumerMapper consumerMapper;

    @Override
    public List<Consumer> queryAll() {
        return consumerMapper.queryAll();
    }
    @Override
    public List<Consumer> queryByUsername(String username) {
        return consumerMapper.queryByUsername(username);
    }

    @Override
    public boolean delete(Integer id) {

       int row =  consumerMapper.delete(id);
        return row==1?true:false;
    }

    @Override
    public boolean existsUsername(String username){
        int count = consumerMapper.existsUsername(username);
        return count==1?true:false;
    }

    @Override
    public Consumer login(Consumer consumer) {
        Consumer c =consumerMapper.queryByUserpwd(consumer.getUsername(),consumer.getPassword());

        return c;
    }

    @Override
    public void regist(Consumer consumer) {
        consumerMapper.add(consumer);
    }

    @Override
    public void modifyPwd(Consumer consumer) {
        consumerMapper.modifyPwd(consumer.getUsername(),consumer.getPassword());
    }

    @Override
    public void modifyPasswordByUsername(String username, String newpassword) {
        Consumer consumer = consumerMapper.findUsersByUsername(username);
        consumer.setUsername(username);
        consumer.setPassword(newpassword);
        consumerMapper.modifyPasswordByUsername(consumer);
    }

    @Override
    public void saveConsumer(Consumer consumer) {
        consumerMapper.saveConsumer(consumer);
    }

    @Override
    public boolean updateConsumer(Consumer consumer) {
        return consumerMapper.updateConsumer(consumer);
    }

    @Override
    public Consumer findConsumerById(int id) {
        Consumer consumer = consumerMapper.findConsumerById(id);
        return consumer;
    }


}
