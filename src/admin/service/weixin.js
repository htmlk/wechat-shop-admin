

const rp = require('request-promise');
module.exports = class extends think.Service {
	  /**
  *获取微信token
  */
    async getWeixinToken(){
    		
       // 获取openid
   const options = {
      method: 'GET',
      url: 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid='+think.config('weixin.appid')+'&secret='+think.config('weixin.secret'),
    };

    let sessionData = await rp(options);
   think.logger.debug(sessionData)
    sessionData = JSON.parse(sessionData);
     return sessionData
   }
};
