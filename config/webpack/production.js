const environment = require('./environment');
const webpack = require('webpack');


module.exports = {
    devServer: {
    },
    devtool: 'source-map',
    entry: {
        //"ym.min": "./src/bootstrap.ts",
    },
    output: { filename: 'bundle.js' },

};

