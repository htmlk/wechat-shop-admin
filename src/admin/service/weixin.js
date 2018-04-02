var wxCard = require("wechat-card");
const rp = require('request-promise');
wxCard.setConfig({
    //appId: think.config('weixin.appid'),
    //appSecret: think.config('weixin.secret')
    appId: 'wxa3b51bfa3764bd04',
    appSecret: '0a8262ae1b70bc931f8d70301c7e650b'

    // 或者配置其他提供access token的服务
    // accessTokenService: "http://url"
});
module.exports = class extends think.Service {
    /**
     *获取微信token
     */
    async getWeixinToken() {

        // 获取openid
        const options = {
            method: 'GET',
            url: 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=' + think.config('weixin.appid') + '&secret=' + think.config('weixin.secret'),
        };

        let sessionData = await rp(options);
        think.logger.debug(sessionData)
        sessionData = JSON.parse(sessionData);
        return sessionData
    }
    //查看卡券信息
    async cardinfo(cardId){
          think.logger.info(cardId)
          return new Promise((resolve, reject) => {

            wxCard.card.getCardDetail(cardId.cardId, function(err, card) {
       
                think.logger.info(card)
               
                      resolve(card)
               
            });

        })
    }
    //核销code
    async consumeCode(data) {
        var _that=this
        return new Promise((resolve, reject) => {

            wxCard.code.consumeCode(data.code, function(err, consumeInfo) {
                if(consumeInfo){
                    _that.model('weixin_card').add({
                        card_id:consumeInfo.card_id,
                        open_id:consumeInfo.openid,
                        code:data.code,
                        addtime:parseInt(new Date().getTime())
                    })
                      resolve(consumeInfo)
                }else{
                      resolve(err)
                }
            });

        })
    }

};