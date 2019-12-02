package com.zhang.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * Author: Administrator
 * Date: 2019/12/2 17:40
 * Description: 角色实体类
 */
@Data
public class Role implements Serializable {
    private Integer id;

    /**
     * 角色名称
     */
    private String roleName;

    /**
     * 唯一权限标识
     */
    private String authority;

    /**
     * 角色状态 1启用，0禁用
     */
    private Integer state;

    private static final long serialVersionUID = 1L;
}