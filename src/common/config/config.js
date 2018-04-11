// default config
import fs from 'fs';
import https from 'https';
const options = {
  key: fs.readFileSync('../crt/2_shop.htmlk.cn.key'),
  cert: fs.readFileSync('../crt/1_shop.htmlk.cn_bundle.crt')
};
const app = (callback, port, host, think) => {
  let server = https.createServer(options, callback);
  server.listen(port, host);
  return server;
}
module.exports = {
  stickyCluster: true,
  createServer: app,
  default_module: 'api',
  port: 443,
  baseUrl:'https://shop.htmlk.cn',
  weixin: {
    appid: 'wx1f8bf2224d9cef82', // 小程序 appidwx7d1611f8ace673fc
    secret: '383588f8984e2bad7e27e48de0e61de6', // 小程序密钥0591fd339aeaba9f41b55e188a697d0e
    mch_id: '1480380952', // 商户帐号ID
    partner_key: '4Sl7dVNvky9jjzSiuJ5NHVa4VjaXWk60', // 微信支付密钥
    notify_url: 'https://shop.htmlk.cn/api/pay/notify' // 微信异步通知，例：https://www.nideshop.com/api/pay/notify
  },
  express: {
    // 快递物流信息查询使用的是快递鸟接口，申请地址：http://www.kdniao.com/
    appid: '1328132', // 对应快递鸟用户后台 用户ID
    appkey: 'ef177606-827c-44a1-8cc3-d5e9d73867f3', // 对应快递鸟用户后台 API key
    request_url: 'http://api.kdniao.cc/Ebusiness/EbusinessOrderHandle.aspx'
  }
};

