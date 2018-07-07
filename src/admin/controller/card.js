var wxCard = require("wechat-card");
var WechatAPI = require('wechat-api');
const Base = require('./base.js');

module.exports = class extends think.Controller {
    async indexAction() {


    }

    //创建卡券
    async addCardAction() {
            var card = {
                card_type: "DISCOUNT",
                base_info: {
                  // ...
                },
                special_info: {
                  // ...
                }
              };

              wxCard.card.createCard(card, function(err, cardId) {
                // do something ...
              });


    }
    //领取列表
    async receivecardAction(){
        const page = this.get('page') || 0
        const size = this.get('size') || 10
        const receivecard=await this.model('weixin_add_card').page(page, size).countSelect();
        return this.success(receivecard)
    }
    //获取卡券信息
    async cardInfoAction() {
        const page = this.get('page') || 0
        const size = this.get('size') || 10

        const cardId = this.get('cardId');
        const cardSerivce = think.service('weixin', 'admin');
        var card = await cardSerivce.cardinfo({ cardId: cardId });
        return this.success(card)
    }
    //获取卡券列表
    async cardlistAction() {
        var carddata = []
        const cardSerivce = think.service('weixin', 'admin');
        var cardlist = await cardSerivce.cardlist();

        for (var i = 0; i < cardlist.length; i++) {
            var card = await cardSerivce.cardinfo({ cardId: cardlist[i] });
            var cardid = await this.model('weixin_card_list').where({ cardId: cardlist[i] }).find()
            if (think.isEmpty(cardid)) {
                await this.model('weixin_card_list').add({
                    title: card.base_info.title,
                    cardId: card.base_info.id,
                    addtime: Math.round(new Date() / 1000)
                })
            }


            carddata.push(card)
        }
        return this.success(carddata)

    }

    //修改卡券信息
    async cardEditAction() {
        // 下面的cardid仅用于demo，实际中不存在
        var card = {
            card_id: "pzTUOwn8m-06AcC-HZ8NsKUf8Fgw",

            base_info: {
               "center_title": "立即核销",
              "center_sub_title": "一间自助机核销",
              "center_url": "yijian.hk",
                   
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
            "expire_seconds": 600,
            "is_unique_code": true,
            "outer_id": 1
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
    //卡券核销列表
    async listAction() {
        const page = this.get('page') || 1
        const size = this.get('size') || 10
        const cardData = await this.model('weixin_card').page(page, size).countSelect();
        return this.success(cardData)
    }

};