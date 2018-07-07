
// default config
import fs from 'fs';
import https from 'https';
const options = {
  key: fs.readFileSync('../crt/test.key'),//https密钥
  cert: fs.readFileSync('../crt/1_test.crt')//https密钥
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
  baseUrl:'https://test.cn',//申请的域名 
  weixin: {
    appid: 'wx1xxxxxxxxxxxxxxxx', // 小程序 appidxxxxxxxxxxxxxx
    secret: '72xxxxxxxxxxxxxxxxxxxxxxx', // 小程序密钥xxxxxxxxxxxxxxxx
    mch_id: 'xxxxxxxxxxx', // 商户帐号ID
    partner_key: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', // 微信支付密钥
    notify_url: 'https://xxxxxxxxxxxxxx/xxxxxxxxxx' // 微信异步通知，例：https://www.test.com/api/pay/notify
  },
  express: {
    // 快递物流信息查询使用的是快递鸟接口，申请地址：http://www.kdniao.com/
    appid: 'xxxxxxxxxxxxxx', // 对应快递鸟用户后台 用户ID
    appkey: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', // 对应快递鸟用户后台 API key
    request_url: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
  }
};

