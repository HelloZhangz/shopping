package com.zhang.common.service;

import com.zhang.common.serach.PageSearch;
import com.zhang.vo.ResultData;

import java.io.Serializable;
import java.util.List;

/**
 * Author: Administrator
 * Date: 2019/12/3 19:30
 * Description: 请详细描述类的作用
 */
public interface BaseService<Model,PK extends Serializable> {

    /**
     * 新增
     */
    int insert(Model model);

    /**
     * 修改
     */
    int update(Model model);

    /**
     * 选择性修改某些列(不为null)
     */
    int updateSelective(Model model);

    /**
     * 根据主键查询
     */
    Model  findOne(PK id);

    /**
     * 分页查询
     */
    ResultData searchPage(PageSearch pageSearch);

}
