package com.yupi.project.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.yupi.project.common.ErrorCode;
import com.yupi.project.exception.BusinessException;
import com.yupi.project.mapper.InterfaceInfoMapper;
import com.yupi.project.service.InterfaceInfoService;
import com.yupi.yuapicommon.model.entity.InterfaceInfo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
* @author ronin
* @description 针对表【interface_info(接口信息)】的数据库操作Service实现
* @createDate 2023-08-29 12:47:08
*/
@Service
public class InterfaceInfoServiceImpl extends ServiceImpl<InterfaceInfoMapper, InterfaceInfo>
    implements InterfaceInfoService {
   
    @Override
    public void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add) {
     Long id = interfaceInfo.getId();
     String name = interfaceInfo.getName();
     String description = interfaceInfo.getDescription();
     String url = interfaceInfo.getUrl();
     String requestHeader = interfaceInfo.getRequestHeader();
     String responseHeader = interfaceInfo.getResponseHeader();
     Integer status = interfaceInfo.getStatus();
     String method = interfaceInfo.getMethod();
     Long userId = interfaceInfo.getUserId();
     Integer isDeleted = interfaceInfo.getIsDelete();
     Date updateTime = interfaceInfo.getUpdateTime();
     Date createTime = interfaceInfo.getCreateTime();

        if (interfaceInfo == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }

        // 如果是添加操作，所有参数必须为空
        if (add) {
            if (StringUtils.isAnyBlank(name) ) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR);
            }
        }
//        如果接口名称不为空且长度大于50，抛出参数异常，错误信息为“名称过长
        if (StringUtils.isNotBlank(name) && name.length() > 50) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "内容过长");
        }

    }

}




