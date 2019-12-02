package com.zhang.entity;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * Author: Administrator
 * Date: 2019/12/2 17:40
 * Description: 用户实体类
 */
@Data
public class User implements Serializable {
    private Integer id;

    /**
     * 用户昵称
     */
    private String nickName;

    /**
     * 用户登录名
     */
    private String userName;

    /**
     * 密码
     */
    private String password;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 最近登录时间
     */
    private Date recentLogin;

    /**
     * MD5盐
     */
    private String salt;

    /**
     * 用户状态 1.启用 0.禁用
     */
    private Integer state;

    private static final long serialVersionUID = 1L;
}