const environment = require('./environment');
const webpack = require('webpack');


module.exports = {
    devServer: {
    },
    devtool: 'source-map',
    entry: {
        //"ym.min": "./src/bootstrap.ts",
    },
    module: {
        /*rules: [
            {
                test: /\.ts$/,
                use: [
                    {
                        loader: "ts-loader"
                    },
                    {
                        loader: "tslint-loader",
                        enforce: "pre"
                    }
                ]
            }
        ],*/
        output: { filename: '[name]-[chunkhash].js' },
        plugins: [],
        /*resolve: {
            modules: [
                "node_modules",
                path.join(__dirname, 'node_modules')
            ],
            extensions: [".webpack.js", ".web.js", ".ts", ".js", "*"],
            enforceExtension: false,
            alias: {
                'handlebars': 'handlebars/runtime.js'
            }
        }*/
    }
};

