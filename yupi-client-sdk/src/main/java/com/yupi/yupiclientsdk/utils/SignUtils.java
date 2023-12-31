package com.yupi.yupiclientsdk.utils;

import cn.hutool.crypto.digest.DigestAlgorithm;
import cn.hutool.crypto.digest.Digester;

public class SignUtils {
    public static String genSign(String body,String secretKey){
        Digester md5 = new Digester(DigestAlgorithm.MD5);
        String context = body+"."+ secretKey;
       return  md5.digestHex(context);
    }
}
