const environment = require('./environment');
const webpack = require('webpack');

module.exports = {
    plugins: [
        new webpack.LoaderOptionsPlugin({
            minimize: true
        }),
        new webpack.optimize.UglifyJsPlugin(),
        new CompressionPlugin({
            asset: '[path].gz[query]',
            algorithm: 'gzip',
            test: /\.js$/
        })
    ]
};





