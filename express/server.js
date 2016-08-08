var express    = require('express');        
var app        = express();                 
var router = express.Router();

router.get('/', function(req, res) {
    res.json({ message: 'API string performance testing :)' });   
});

app.use('/api', router);
app.listen(4000);