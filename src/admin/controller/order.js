const Base = require('./base.js');
const moment = require('moment');
module.exports = class extends Base {
  /**
   * index action
   * @return {Promise} []
   */
  async indexAction() {
    const page = this.get('page') || 1;
    const size = this.get('size') || 10;
    const orderSn = this.get('orderSn') || '';
    const consignee = this.get('consignee') || '';
    const  starttime=this.get('starttime') || 0;
    const  endtime=this.get('endtime') ||999999999999999;
    const  orderstatus=this.get('orderstatus') ||'';
    think.logger.info(orderstatus)
    const model = this.model('order');
    const data = await model.where({order_sn: ['like', `%${orderSn}%`],order_status:['like', `${orderstatus}%`], consignee: ['like', `%${consignee}%`],add_time: {'>': starttime,'<': endtime}}).order(['id DESC']).page(page, size).countSelect();
    const newList = [];
    for (const item of data.data) {
      item.order_status_text = await this.model('order').getOrderStatusText(item.id);
      newList.push(item);
    }
    data.data = newList;
    return this.success(data);
  }
async detailAction() {
    const orderId = this.get('orderId');
     const userId = this.get('userId');
    const orderInfo = await this.model('order').where({ user_id:userId, id: orderId }).find();

    if (think.isEmpty(orderInfo)) {
      return this.fail('订单不存在');
    }

    orderInfo.province_name = await this.model('region').where({ id: orderInfo.province }).getField('name', true);
    orderInfo.city_name = await this.model('region').where({ id: orderInfo.city }).getField('name', true);
    orderInfo.district_name = await this.model('region').where({ id: orderInfo.district }).getField('name', true);
    orderInfo.full_region = orderInfo.province_name + orderInfo.city_name + orderInfo.district_name;

    const latestExpressInfo = await this.model('order_express').getLatestOrderExpress(orderId);
    orderInfo.express = latestExpressInfo;

    const orderGoods = await this.model('order_goods').where({ order_id: orderId }).select();

    // 订单状态的处理
    orderInfo.order_status_text = await this.model('order').getOrderStatusText(orderId);
    orderInfo.add_time = moment.unix(orderInfo.add_time).format('YYYY-MM-DD HH:mm:ss');
    orderInfo.final_pay_time = moment('001234', 'Hmmss').format('mm:ss');
    // 订单最后支付时间
    if (orderInfo.order_status === 0) {
      // if (moment().subtract(60, 'minutes') < moment(orderInfo.add_time)) {
      orderInfo.final_pay_time = moment('001234', 'Hmmss').format('mm:ss');
      // } else {
      //     //超过时间不支付，更新订单状态为取消
      // }
    }

    // 订单可操作的选择,删除，支付，收货，评论，退换货
    const handleOption = await this.model('order').getOrderHandleOption(orderId);

    return this.success({
      orderInfo: orderInfo,
      orderGoods: orderGoods,
      handleOption: handleOption
    });
  }

  async infoAction() {
    const id = this.get('id');
    const model = this.model('order');
    const data = await model.where({id: id}).find();

    return this.success(data);
  }

  async storeAction() {
    if (!this.isPost) {
      return false;
    }

    const values = this.post();
    const id = this.post('id');

    const model = this.model('order');
    values.is_show = values.is_show ? 1 : 0;
    values.is_new = values.is_new ? 1 : 0;
    if (id > 0) {
      await model.where({id: id}).update(values);
    } else {
      delete values.id;
      await model.add(values);
    }
    return this.success(values);
  }

  
  //修改订单状态
  async orderstatusAction(){
    const orderId=this.get('orderId')
    const orderStatus=this.get('orderStatus')
    const status=await this.model('order').updateOrderStatus(orderId,orderStatus);
    return  this.success(status);
  }
   //发货通知 
   async sendmsgAction(){
       const orderId = this.get('orderId');
      const orderInfo = await this.model('order').where({ id: orderId }).find();

      const openid = await this.model('user').where({ id: orderInfo.user_id }).getField('weixin_openid', true);
      think.logger.info(orderInfo.prepay_id)
      var datamsg= await this.model('order').sendmsg(openid,orderInfo);
     think.logger.info(datamsg)
     return this.success(datamsg)
   }
  async destoryAction() {
    const id = this.post('id');
    await this.model('order').where({id: id}).limit(1).delete();

    // 删除订单商品
    await this.model('order_goods').where({order_id: id}).delete();

    // TODO 事务，验证订单是否可删除（只有失效的订单才可以删除）

    return this.success();
  }
};
