package com.zhang.common.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.zhang.common.mapper.BaseMapper;
import com.zhang.common.serach.PageSearch;
import com.zhang.common.service.BaseService;
import com.zhang.vo.ResultData;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

/**
 * Author: Administrator
 * Date: 2019/12/3 19:37
 * Description: 请详细描述类的作用
 */
public class BaseSearchImpl<Model, PK extends Serializable> implements BaseService<Model, PK> {

    private BaseMapper baseMapper=null;

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public int insert(Model model) {
        return this.baseMapper.insert(model);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public int update(Model model) {
        return this.baseMapper.update(model);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public int updateSelective(Model model) {
        return this.baseMapper.updateSelective(model);
    }

    @Transactional(propagation = Propagation.SUPPORTS)
    @Override
    public Model findOne(PK id) {
        return (Model)this.baseMapper.findOne(id);
    }

    @Transactional(propagation = Propagation.SUPPORTS)
    @Override
    public ResultData searchPage(PageSearch pageSearch) {
        //分页查询
        PageHelper.offsetPage(pageSearch.getOffset(),pageSearch.getLimit());
        List rows=this.baseMapper.searchPage(pageSearch);
        //强转成Page包装后的集合数据
        Page pg=(Page) rows;
        //返回结果
        ResultData resultData=new ResultData();
        resultData.setRows(rows);
        resultData.setTotal(pg.getTotal());
        return resultData;
    }
}
