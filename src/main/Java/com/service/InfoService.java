package com.service;

import com.pojo.Info;

import java.util.List;

public interface InfoService {
    int addInfo(Info info);

    int deleteInfoById(Integer eid);

    int updateInfo(Info info);

    Info queryById(Integer eid);

    List<Info> queryAllInfo();
}
