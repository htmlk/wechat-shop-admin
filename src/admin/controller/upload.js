const Base = require('./base.js');
const fs = require('fs');
module.exports = class extends Base {



  async goodsPicAction() {
    const goodsFile = this.file('goods_Pic');
    if (think.isEmpty(goodsFile)) {
      return this.fail('保存失败');
    }
    const that = this;
    const filename = '/static/upload/goods/' + think.uuid(32) + '.jpg';
    const is = fs.createReadStream(goodsFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
    is.pipe(os);

    return that.success({
      name: 'goods_Pic',
      fileUrl: think.config('baseUrl') + filename
    });
  }

   async listPicAction() {
    const goodsFile = this.file('list_Pic');
    if (think.isEmpty(goodsFile)) {
      return this.fail('保存失败');
    }
    const that = this;
    const filename = '/static/upload/list/' + think.uuid(32) + '.jpg';
    const is = fs.createReadStream(goodsFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
    is.pipe(os);

    return that.success({
      name: 'list_Pic',
      fileUrl: think.config('baseUrl') + filename
    });
  }


 async qrcodePicAction() {
    const goodsFile = this.file('qrcode_Pic');
    if (think.isEmpty(goodsFile)) {
      return this.fail('保存失败');
    }
    const that = this;
    const filename = '/static/upload/qrcode/' + think.uuid(32) + '.jpg';
    const is = fs.createReadStream(goodsFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
    is.pipe(os);

    return that.success({
      name: 'qrcode_Pic',
      fileUrl: think.config('baseUrl') + filename
    });
  }


  async brandPicAction() {
    const brandFile = this.file('brand_pic');
    if (think.isEmpty(brandFile)) {
      return this.fail('保存失败');
    }
    const that = this;
    const filename = '/static/upload/brand/' + think.uuid(32) + '.jpg';
    const is = fs.createReadStream(brandFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
    is.pipe(os);

    return that.success({
      name: 'brand_pic',
      fileUrl: think.config('baseUrl') + filename
    });
  }

  async brandNewPicAction() {
    const brandFile = this.file('brand_new_pic');
    if (think.isEmpty(brandFile)) {
      return this.fail('保存失败');
    }
    const that = this;
    const filename = '/static/upload/brand/' + think.uuid(32) + '.jpg';

    const is = fs.createReadStream(brandFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
    is.pipe(os);

    return that.success({
      name: 'brand_new_pic',
      fileUrl: think.config('baseUrl') + filename
    });
  }

  async categoryWapBannerPicAction() {
    const imageFile = this.file('wap_banner_pic');
    if (think.isEmpty(imageFile)) {
      return this.fail('保存失败');
    }
    const that = this;
    const filename = '/static/upload/category/' + think.uuid(32) + '.jpg';

    const is = fs.createReadStream(imageFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
    is.pipe(os);

    return that.success({
      name: 'wap_banner_url',
      fileUrl: think.config('baseUrl') + filename
    });
  }

  async topicThumbAction() {
    const imageFile = this.file('scene_pic_url');
    if (think.isEmpty(imageFile)) {
      return this.fail('保存失败');
    }
    const that = this;
    const filename = '/static/upload/topic/' + think.uuid(32) + '.jpg';

    const is = fs.createReadStream(imageFile.path);
    const os = fs.createWriteStream(think.ROOT_PATH + '/www' + filename);
    is.pipe(os);

    return that.success({
      name: 'scene_pic_url',
      fileUrl: think.config('baseUrl') + filename
    });
  }
};
