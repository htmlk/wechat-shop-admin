const Base = require('./base.js');
const rp = require('request-promise');
module.exports = class extends Base {
	async  indexAction() {
	   return this.display()	
  	}
  	async getpicAction(){
  		 // weixintoken
	    const tokenSerivce = think.service('weixin', 'admin');
	    const data = await tokenSerivce.getWeixinToken();
	  	think.logger.debug(data)
  		// const options = {
    //  		 	method: 'POST',
    //   			url: 'https://api.weixin.qq.com/cgi-bin/wxaapp/createwxaqrcode?access_token='+data.access_token,
    //     		body:{"path": "pages/goods/goods", "width": 430},
    // 			json: true
    // 	};

	   //  let pic = await rp(options);

	    return this.success(data);
  	}
};
