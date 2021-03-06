package com.ddcat.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ddcat.api.entity.SysRole;

import java.util.List;

/**
 * @author dd-cat
 */
public interface SysRoleMapper extends BaseMapper<SysRole> {

    /**
     * 通过用户ID，查询角色信息
     *
     * @param userId 用户id
     * @return List<SysRole>
     */
    List<SysRole> listRolesByUserId(Long userId);
}
