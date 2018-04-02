const Base = require('./base.js');
var wxCard = require("wechat-card");


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

    async codeAction() {
        var code = "737292986196";
        wxCard.setConfig({
            //appId: think.config('weixin.appid'),
            //appSecret: think.config('weixin.secret')
            appId: 'wxa3b51bfa3764bd04',
            appSecret: '0a8262ae1b70bc931f8d70301c7e650b'

            // 或者配置其他提供access token的服务
            // accessTokenService: "http://url"
        });
        wxCard.basic.getAccessToken(function(err, accessToken) {
            think.logger.info(accessToken)
            think.logger.info(err)
            // do something ...
        });
        wxCard.code.getCodeDetail(code, function(err, details) {
            // do something ...
            think.logger.info(details)
             think.logger.info(err)
        });

          wxCard.code.consumeCode(code, function(err, consumeInfo) {
             think.logger.info(consumeInfo)
            // do something ...
          });

    }
};