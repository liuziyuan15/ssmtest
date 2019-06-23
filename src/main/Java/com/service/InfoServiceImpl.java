package com.service;

import com.dao.InfoDao;
import com.pojo.Info;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InfoServiceImpl implements InfoService {

    @Autowired
    private InfoDao infoDao;

    @Override
    public int addInfo(Info info){
        return infoDao.addInfo(info);
    }

    @Override
    public int deleteInfoById(Integer eid) {
        return infoDao.deleteInfoById(eid);
    }

    @Override
    public int updateInfo(Info info){
        return infoDao.updateInfo(info);
    }

    @Override
    public Info queryById(Integer eid){
        return infoDao.queryById(eid);
    }

    @Override
    public List<Info> queryAllInfo(){
        return infoDao.queryAllInfo();
    }
}
