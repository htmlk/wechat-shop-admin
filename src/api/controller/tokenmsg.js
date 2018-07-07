const crypto = require('crypto');
module.exports = class extends think.Controller {
    async indexAction() {
        var that = this
        const timestamp = this.get('timestamp');
        const nonce = this.get('nonce');
        const signature = this.get('signature');
        const echostr = this.get('echostr')

        const MsgType = this.post('MsgType')

        if (MsgType == 'text') {
            const data = {
                "ToUserName": this.post('ToUserName'),
                "FromUserName": this.post('FromUserName'),
                "CreateTime": this.post('CreateTime'),
                "MsgType": this.post('MsgType'),
                "Content": this.post('Content'),
                "MsgId": this.post('MsgId')
            }
            this.model('weixin_msg').add(data)
        }
        if (MsgType == 'image') {
            const data = {
                "ToUserName": this.post('ToUserName'),
                "FromUserName": this.post('FromUserName'),
                "CreateTime": this.post('CreateTime'),
                "MsgType": this.post('MsgType'),
                "PicUrl": this.post('PicUrl'),
                "MediaId": this.post('MediaId'),
                "MsgId": this.post('MsgId')
            }
            this.model('weixin_msg').add(data)
        }




        var key = ['weixin', timestamp, nonce].sort().join('');
        //将token （自己设置的） 、timestamp（时间戳）、nonce（随机数）三个参数进行字典排序
        var sha1 = crypto.createHash('sha1');
        //将上面三个字符串拼接成一个字符串再进行sha1加密
        sha1.update(key);


        if (sha1.digest('hex') === signature) {
            return that.json(echostr)
        } else {
            return that.fail()
        }

    }
    async listAction() {
        const list = await this.model('weixin_msg').group('FromUserName').select()
        for (var i = 0; i < list.length; i++) {
            var userinfo = await this.model('user').where({ password: list[i].FromUserName }).find()
            list[i].userinfo = userinfo
        }
        return this.json(list)
    }
    async sendAction() {
        var openid = this.post('openid')
        var msgtype = this.post('msgtype')
        var content = this.post('content')
        if (think.isEmpty(openid)) {
          return this.fail(400, '用户不在线');
        }
        if (think.isEmpty(content)) {
          return this.fail(400, '内容不能为空');
        }
        if (think.isEmpty(msgtype)) {
          return this.fail(400, 'msgtype');
        }
        const sendmsg = think.service('weixin', 'api');
        var data = await sendmsg.accesstoken()
       
        var msgdata = await sendmsg.sendMsg(JSON.parse(data).access_token, openid, msgtype, content)
        think.logger.debug("msgdata",msgdata)

        if(msgdata.errcode==0){
              await this.model('weixin_msg').add({
            "ToUserName": '',
            "FromUserName": openid,
            "CreateTime": parseInt(new Date().getTime() / 1000),
            "MsgType": msgtype,
            "Content": content,
            "MsgId": ""
        })
        }
      
        return this.success(msgdata)
    }
    async detailAction() {
        const openid = this.post('openid')
        const page = this.post('page') || 1;
        const size = this.post('size') || 5;
        const list = await this.model('weixin_msg').where({ FromUserName: openid }).order(['id DESC']).page(page, size).countSelect();
        think.logger.info(list.data.length)
        for (var i = 0; i < list.data.length; i++) {
            var userinfo = await this.model('user').where({ password: list.data[i].FromUserName }).find()
            list.data[i].userinfo = userinfo
        }
        list.data=list.data.sort(this.compare("id"))
        return this.json(list)
    }
    compare (prop) {
    return function (obj1, obj2) {
        var val1 = obj1[prop];
        var val2 = obj2[prop];
        if (!isNaN(Number(val1)) && !isNaN(Number(val2))) {
            val1 = Number(val1);
            val2 = Number(val2);
        }
        if (val1 < val2) {
            return -1;
        } else if (val1 > val2) {
            return 1;
        } else {
            return 0;
        }            
    } 
}

}