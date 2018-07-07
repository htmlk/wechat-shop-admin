const Base = require('./base.js');

module.exports = class extends  think.Controller {
    //领取卡券
    async indexAction() {

        //const user_id = this.get('userid');
        const cardid=this.get('cardid');
       // const openid = await this.model('user').where({ id: user_id }).getField('weixin_openid', true);
        var timestamp = Math.round(new Date() / 1000);
       

        const cardSerivce = think.service('weixin', 'api');
        var ticket = await cardSerivce.getApiTicket();
        var signature = await cardSerivce.getSignature(ticket, cardid, timestamp)

        return this.success({
            signature: signature,
            timestamp: timestamp
        })
    }
    //添加卡券领取记录
    async addcardAction() {
        const cardSerivce = think.service('weixin', 'api');
        var code = await cardSerivce.encryptCode(this.post('code'));
        const data = {
            userid: this.post('userid'),
            openid:this.post('openid'),
            cardExt: this.post('cardExt'),
            cardId: this.post('cardId'),
            code: code,
            isSuccess: this.post('isSuccess') ? 1 : 0,
            isCode: 1,
            addtime:Math.round(new Date() / 1000)
        }
        var addcard = await this.model('weixin_add_card').add(data)
        return this.success(addcard)
    }
    //已经添加的卡券列表
    async cardlistAction() {

        const page = this.get('page') || 1
        const size = this.get('size') || 10
        const userid = this.get('userid') || ''
        if (think.isEmpty(userid)) {
             const openid = this.get('openid') || ''
             const cardSerivce = think.service('weixin', 'api');
            var cardData = await this.model('weixin_add_card').where({ openid: openid,isCode:1 }).page(page, size).countSelect();

            for (var i = 0; i < cardData.data.length; i++) {
                think.logger.info(cardData.data[i].cardId)
                var cardinfo = await cardSerivce.cardinfo(cardData.data[i].cardId);
                cardData.data[i].cardinfo = cardinfo
            }
            return this.success(cardData)
  
        }

        const cardSerivce = think.service('weixin', 'api');
        var cardData = await this.model('weixin_add_card').where({ userid: userid,isCode:1 }).page(page, size).countSelect();

        for (var i = 0; i < cardData.data.length; i++) {
            think.logger.info(cardData.data[i].cardId)
            var cardinfo = await cardSerivce.cardinfo(cardData.data[i].cardId);
            cardData.data[i].cardinfo = cardinfo
        }


        return this.success(cardData)
    }
    //获取卡券密码
    async cardpwdAction(){
       const list=await this.model('weixin_card_list').countSelect()
       return this.success(list)
    }
    //卡券code解密
    async codeAction() {
        const code = this.get('code');
        const cardSerivce = think.service('weixin', 'api');
        var codeData = await cardSerivce.encryptCode(code);
        return this.success({
            codeData: codeData
        })
    }
};