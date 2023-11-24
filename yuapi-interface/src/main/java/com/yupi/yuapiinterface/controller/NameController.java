package com.yupi.yuapiinterface.controller;

import com.yupi.yupiclientsdk.model.User;
import com.yupi.yupiclientsdk.utils.SignUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/name")
public class NameController {
    @GetMapping("/get")
    public String getNameByGet(String name,HttpServletRequest request){
       System.out.println( request.getHeader("yupi"));
        return "Get 你的名字"+name;

    }
    @PostMapping("/post")
    public String getNameByPost(@RequestParam String name){
        return "Post 你的名字"+name;
    }

    @PostMapping("/user")
    public String getUserNameByPost(@RequestBody User user, HttpServletRequest request){
//        String accessKey = request.getHeader("accessKey");
//        String nonce = request.getHeader("nonce");
//        String timestamp = request.getHeader("timestamp");
//        String body = request.getHeader("body");
//        String sign = request.getHeader("sign");
//      //todo 实际情况去数据库校验是由已   经分配用户
//        if (!accessKey.equals("yupi")){
//            throw new RuntimeException("wuquanxian");
//        }
//        //todo 实际情况数据库查到sk，在使用签名工具得到sign与客户端对比
//        String serverSign = SignUtils.genSign(body, "abcdefg");
//        if (!sign.equals(serverSign)) {
//            throw new RuntimeException("wuquanxiang");
//        }
       String result= "POST用户名字"+ user.getUsername();
        return result;
    }
}
