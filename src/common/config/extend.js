const model = require('think-model');
const cache = require('think-cache');
const websocket = require('think-websocket');
module.exports = [
 websocket(think.app),
  model(think.app),
  cache
];
