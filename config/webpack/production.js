const webpack = require('../../bin/webpack');
const environment = require('./environment');

module.exports = environment.toWebpackConfig();

