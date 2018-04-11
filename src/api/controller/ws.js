// server
module.exports = class extends think.Controller {
  constructor(...arg) {
    super(...arg);
  }
  openAction() {
    think.logger.info('ws open123123');

    this.emit('opend', 'This client opened successfully!');
    return this.success();
  }
  closeAction() {
     think.logger.info('ws close');
    return this.success();
  }
  addUserAction() {
     think.logger.info('addUserAction ...');
    console.log(this.wsData); // this.req.websocketData, 'thinkjs'
    console.log(this.websocket); // this.req.websocket, websocket instance
    console.log(this.isWebsocket); // this.isMethod('WEBSOCKET'), true
    return this.success();
  }
}