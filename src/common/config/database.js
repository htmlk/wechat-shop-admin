const mysql = require('think-model-mysql');

module.exports = {
  handle: mysql,
  database: 'nideshop',
  prefix: 'nideshop_',
  encoding: 'utf8mb4',
  host: 'gz-cdb-fyhdx24g.sql.tencentcdb.com',
  port: '63058',
  user: 'root',
  password: 'Yijiansql_2018',
  dateStrings: true
};
