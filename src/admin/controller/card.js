var wxCard = require("wechat-card");
var WechatAPI = require('wechat-api');

module.exports = class extends think.Controller {
    async indexAction() {


    }
    //创建卡券
    async addCardAction() {

    }
    //获取卡券信息
    async cardInfoAction() {
        const cardId = this.get('cardId');
        const cardSerivce = think.service('weixin', 'admin');
        var card = await cardSerivce.cardinfo({ cardId: cardId });
        return this.success(card)
    }

    //修改卡券信息
    async cardEditAction() {
        // 下面的cardid仅用于demo，实际中不存在
        var card = {
            card_id: "pzTUOwre_kmkKAvNkzsyM37TteAE",
            base_info: {
                "custom_url_name": "立即使用",

                "custom_url": "https://yijian.hk",

                "custom_app_brand_user_name": "gh_d240281bb749@app",

                "custom_app_brand_pass": "pages/index/index",

                "custom_url_sub_title": "查看逸住商城",

                "promotion_url_name": "更多优惠",

                "promotion_url": "https://yijian.hk",

                "promotion_app_brand_user_name": "gh_d240281bb749@app",

                "promotion_app_brand_pass": "pages/index/index"
            }
        };

        wxCard.card.modifyCard(card, function(err) {
            // do something ...
            think.logger.info(err)
        });

    }
    //获取卡券二维码

    async qrcodeAction(data) {
        const cardId = this.get('cardId');

        var options = {
            "expire_seconds":600,
            "is_unique_code":true,
            "outer_id":1
        };

        wxCard.card.createCardQRCode(cardId, options, function(err, url) {
            // do something ...
            think.logger.info(url)
            think.logger.info(err)
        });
    }
    //核销code
    async consumeCodeAction() {
        const _that = this
        const code = this.get('code');
        const cardSerivce = think.service('weixin', 'admin');
        var consumeCode = await cardSerivce.consumeCode({ code: code });
        return this.success(consumeCode)
    }

   
};