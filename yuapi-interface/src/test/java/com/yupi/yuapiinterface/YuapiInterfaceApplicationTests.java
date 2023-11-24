package com.yupi.yuapiinterface;

import com.yupi.yupiclientsdk.client.YuApiClient;
import com.yupi.yupiclientsdk.model.User;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

@SpringBootTest
class YuapiInterfaceApplicationTests {
          @Resource
         private YuApiClient yuApiClient;

    @Test
    void contextLoads() {
        String yupi = yuApiClient.getNameByGet("yupi");
        User user = new User();
        user.setUsername("liyuqi");
        String userNameByPost = yuApiClient.getUserNameByPost(user);
        System.out.println(yupi);
        System.out.println(userNameByPost);
    }

}
