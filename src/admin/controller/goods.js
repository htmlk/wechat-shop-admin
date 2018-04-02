const Base = require('./base.js');

module.exports = class extends Base {
    /**
     * index action
     * @return {Promise} []
     */
    async indexAction() {
        const page = this.get('page') || 1;
        const size = this.get('size') || 10;
        const name = this.get('name') || '';

        const model = this.model('goods');
        const data = await model.where({ name: ['like', `%${name}%`] }).order(['id DESC']).page(page, size).countSelect();

        return this.success(data);
    }

    async addAction() {
        var data = {
            id: this.post('id') ||'',
            category_id: this.post('category_id') || 1,
            goods_sn: this.post('goods_sn') || 1,
            name: this.post('name') || 1,
            brand_id: this.post('brand_id') || 1,
            goods_number: this.post('goods_number') || 1,
            keywords: this.post('keywords') || 1,
            goods_brief: this.post('goods_brief') || 1,
            goods_desc: this.post('goods_desc') || 1,
            is_on_sale: this.post('is_on_sale') || 1,
            add_time: this.post('add_time') || parseInt(new Date().getTime() / 1000),
            sort_order: this.post('sort_order') || 1,
            is_delete: this.post('is_delete') || 1,
            attribute_category:this.post('attribute_category')||1,
            counter_price: this.post('counter_price') || 1,
            extra_price: this.post('extra_price') || 1,
            is_new: this.post('is_new') || 1,
            goods_unit: this.post('goods_unit') || 1,
            primary_pic_url: this.post('primary_pic_url') || 1,
            list_pic_url: this.post('list_pic_url') || 1,
            retail_price: this.post('retail_price') || 1,
            sell_volume: this.post('sell_volume') || 1,
            retail_price: this.post('retail_price') || 1,
            primary_product_id: this.post('primary_product_id') || 1,
            unit_price: this.post('unit_price') || 1,
            promotion_desc: this.post('promotion_desc') || 1,
            promotion_tag: this.post('promotion_tag') || 1,
            app_exclusive_price: this.post('app_exclusive_price') || 1,
            unit_price: this.post('unit_price') || 1,
            is_app_exclusive: this.post('is_app_exclusive') || 1,
            is_limited: this.post('is_limited') || 1,
            is_hot: this.post('is_hot') || 1,
            qrcode: this.post('qrcode') || 1,
        }
        var goods=await this.model('goods').add(data)
        return this.success(goods)
    }

    async infoAction() {
        const id = this.get('id');
        const model = this.model('goods');
        const data = await model.where({ id: id }).find();

        return this.success(data);
    }

    async storeAction() {
        if (!this.isPost) {
            return false;
        }

        const values = this.post();
        const id = this.post('id');

        const model = this.model('goods');
        values.is_on_sale = values.is_on_sale ? 1 : 0;
        values.is_new = values.is_new ? 1 : 0;
        values.is_hot = values.is_hot ? 1 : 0;
        if (id > 0) {
            await model.where({ id: id }).update(values);
        } else {
            delete values.id;
            await model.add(values);
        }
        return this.success(values);
    }
    //商品上下架
    async updateGoodsAction() {
        const goodid = this.get('goodid');
        const isonsale = this.get('isonsale');
        var data = await this.model('goods').where({ id: goodid }).limit(1).update({ is_on_sale: isonsale });
        return this.success(data);
    }
    //是否主页显示
    async updateishotAction() {
        const goodid = this.get('goodid');
        const ishot = this.get('ishot');
        var data = await this.model('goods').where({ id: goodid }).limit(1).update({ is_hot: ishot });
        return this.success(data);
    }

    async destoryAction() {
        const id = this.post('id');
        await this.model('goods').where({ id: id }).limit(1).delete();
        // TODO 删除图片
        return this.success();
    }
};