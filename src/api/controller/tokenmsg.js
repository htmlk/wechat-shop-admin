const crypto = require('crypto');
module.exports = class extends think.Controller {
	 async indexAction() {
        var that=this
        const timestamp = this.get('timestamp');
        const nonce = this.get('nonce');
        const signature = this.get('signature');
        const echostr=this.get('echostr')
      
        const MsgType=this.post('MsgType') 
        const Content=this.post('Content') 
        
       
         think.logger.info(MsgType)
         think.logger.info(Content)
        
        var key = ['weixin', timestamp, nonce].sort().join('');
        //将token （自己设置的） 、timestamp（时间戳）、nonce（随机数）三个参数进行字典排序
        var sha1 = crypto.createHash('sha1');
        //将上面三个字符串拼接成一个字符串再进行sha1加密
        sha1.update(key);


        if (sha1.digest('hex') === signature) {
               return that.json(echostr)
        }else{
               return that.fail()
        }
     
    }

}