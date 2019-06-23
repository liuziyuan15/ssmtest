package com.dao;

import com.pojo.Info;

import java.util.List;

public interface InfoDao {
    int addInfo(Info info);

    int deleteInfoById(Integer eid);

    int updateInfo(Info info);

    Info queryById(Integer eid);

    List<Info> queryAllInfo();
}
