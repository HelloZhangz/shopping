package com.zhang.vo;

import lombok.Getter;
import lombok.Setter;

/**
 * Author: Administrator
 * Date: 2019/12/3 19:43
 * Description: 请详细描述类的作用
 */
@Getter
@Setter
public class ResultData {
    //总共多少笔数据
    private long total;

    /**
     * 当前页的数据
     */
    private Object rows;

}