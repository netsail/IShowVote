<?php
/**
 * @name 微信安全登录认证
 * @author sail
 * @since 20161210
 * @link http://www.word100.com/
 * @example getWeixinUserInfo方法参数code值来源入口链接https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxsadfasdfwr12fhfdhtwre&redirect_uri=http://www.word100.com/&response_type=code&scope=snsapi_userinfo&state=1234#wechat_redirect#abc
 */
class WeixinAPI {
    // 微信安全登录认证
    const WEIXIN_APPID = "wxsadfasdfwr12fhfdhtwre";
    const WEIXIN_APPSECRET = "2141rasdfq2w341fasdfwfasdfasfasfaf";
    public function WeixinAPI() {
    }
    public function httpsRequest($url) {
        $curl = curl_init ();
        curl_setopt ( $curl, CURLOPT_URL, $url );
        curl_setopt ( $curl, CURLOPT_SSL_VERIFYPEER, FALSE );
        curl_setopt ( $curl, CURLOPT_SSL_VERIFYHOST, FALSE );
        curl_setopt ( $curl, CURLOPT_RETURNTRANSFER, 1 );
        $data = curl_exec ( $curl );
        if (curl_errno ( $curl )) {
            return 'ERROR ' . curl_error ( $curl );
        }
        curl_close ( $curl );
        return $data;
    }
    public function getWeixinUserInfo($code) {
        $appid = self::WEIXIN_APPID;
        $appsecret = self::WEIXIN_APPSECRET;
        $access_token = "";
        
        $access_token_url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=$appid&secret=$appsecret&scope=snsapi_base&code=$code&grant_type=authorization_code";
        $access_token_json = $this->httpsRequest ( $access_token_url );
        $access_token_array = json_decode ( $access_token_json, true );
        $access_token = $access_token_array ['access_token'];
        $openid = $access_token_array ['openid'];
        
        $userinfo_url = "https://api.weixin.qq.com/sns/userinfo?access_token=$access_token&openid=$openid&lang=zh_CN";
        $userinfo_json = $this->httpsRequest ( $userinfo_url );
        $userinfo_array = json_decode ( $userinfo_json, true );
        return $userinfo_array;
    }
}

?>