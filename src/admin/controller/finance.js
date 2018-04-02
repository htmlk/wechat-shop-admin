const Base = require('./base.js');

module.exports = class extends Base {
	 async indexAction() {
	 	 const page = this.get('page') || 1;
   		 const size = this.get('size') || 10;
	     var financeData=await this.model('order').where({ pay_status: 2 }).order(['id DESC']).page(page, size).countSelect();;
	    financeData.daycount=await  this.model('order').where({ pay_status: 2 }).sum('actual_price');	
	     
	     return this.success(financeData);

	 }
}