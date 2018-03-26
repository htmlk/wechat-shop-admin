const Base = require('./base.js');
var wxCard = require("wechat-card");

wxCard.setConfig({
    appId: think.config('weixin.appid'),
    appSecret: think.config('weixin.secret')
    // 或者配置其他提供access token的服务
    // accessTokenService: "http://url"
});
module.exports = class extends Base {
    async indexAction() {
        var _that = this
        const user_id = this.get('userid');
        const openid = await this.model('user').where({ id: user_id }).getField('weixin_openid', true);
        var timestamp = new Date().getTime()
        var cardid = 'pzTUOwhO5LftlcWxMHtmIMixlWeE'
        var data = [timestamp, '', cardid]

        wxCard.basic.getApiTicket(function(err, ticket) {
            // do something ...
            data[1] = ticket
             think.logger.info(data)
            var signature = wxCard.basic.getSignatureSync(data);
             think.logger.info(signature)
        });
       
        
       
        _that.success(signature)
    }
};