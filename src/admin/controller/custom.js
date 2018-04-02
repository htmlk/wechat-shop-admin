var WechatAPI = require('wechat-api');

var api = new WechatAPI('wx1f8bf2224d9cef82', '383588f8984e2bad7e27e48de0e61de6');

module.exports = class extends think.Controller {
    async indexAction() {
        var opts = {
            "starttime": 1522209600,
            "endtime": 1522233989,
            "msgid": 1,
            "number": 10000
        }
         think.logger.info("res")
        api.getRecords(opts, function(res,err) {
            // body...
            think.logger.info(res)
            think.logger.info(err)
        });
        return this.success('213')
    }
}