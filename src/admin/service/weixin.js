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
    async cardinfo(cardId) {

        return new Promise((resolve, reject) => {
            wxCard.card.getCardDetail(cardId.cardId, function(err, card) {
                resolve(card)
            });
        })
    }
    //查看卡券列表
    async cardlist(page=0, size=10) {

        return new Promise((resolve, reject) => {
            wxCard.card.getCardIdList(page, size, function(err, ids) {
                think.logger.info(ids)
                resolve(ids)
            });
        })
    }
    //核销code
    async consumeCode(data) {
        var _that = this
        return new Promise((resolve, reject) => {

            wxCard.code.consumeCode(data.code, function(err, consumeInfo) {
                if (consumeInfo) {
                    _that.model('weixin_card').add({
                        card_id: consumeInfo.card_id,
                        open_id: consumeInfo.openid,
                        code: data.code,
                        addtime: parseInt(new Date().getTime())
                    })
                    _that.model('weixin_add_card').where({code:data.code}).update({isCode:0})
                    consumeInfo.code=0
                    consumeInfo.msgtext='核销成功'
                    resolve(consumeInfo)
                } else {

                    err.msgtext='核销失败'
                    resolve(err)
                }
            });

        })
    }

};