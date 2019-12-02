package com.zhang.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * Author: Administrator
 * Date: 2019/12/2 17:40
 * Description: 菜单实体类
 */
@Data
public class Menu implements Serializable {
    private Integer id;

    /**
     * 菜单名称
     */
    private String menuName;

    /**
     * 1目录，2代表菜单，3代表按钮
     */
    private Integer menuLevel;

    /**
     * 后台url地址
     */
    private String actionName;

    /**
     * 唯一权限标识
     */
    private String authority;

    /**
     * 排序
     */
    private Integer sort;

    /**
     * 可见性 1可见，0不可见
     */
    private Integer display;

    /**
     * 父级菜单ID
     */
    private Integer parentId;

    private static final long serialVersionUID = 1L;
}