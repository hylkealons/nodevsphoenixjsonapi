var cluster = require('cluster');
var express = require('express');
var workers = [];

if (cluster.isMaster) {
    var cpuCount = require('os').cpus().length;
    for (var i = cpuCount; i > 0; --i) {
        cluster.fork({worker: i});
    }
}
else {
    var app = express();
    var router = express.Router();

    router.get('/', function (req, res) {
        res.json({ message: 'API string performance testing :) node:' +process.env['worker']});
    });

    app.use('/api', router);

    app.listen(4000);
}


