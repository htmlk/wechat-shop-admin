const Base = require('./base.js');

module.exports = class extends Base {
	async indexAction(){
	   	const pricecount=await  this.model('order').where({ pay_status: 2 }).sum('actual_price');
	   	const usercount=await  this.model('user').count('id');
	   	const goodscount=await  this.model('goods').count('id');
	   	const ordercount=await  this.model('order').count('id');
	    return this.success({
	    	pricecount:pricecount,
	    	ordercount:ordercount,
	    	usercount:usercount,
	    	goodscount:goodscount
	    })
	}
}