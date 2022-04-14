var exec = require('cordova/exec');

module.exports = {
    coolMethod:function (arg0, success, error) {
        exec(success, error, 'wswPlugin', 'coolMethod', [arg0]);
    },
    haha:function (arg0, success, error) {
        exec(success, error, 'wswPlugin', 'coolMethod', [arg0]);
    }
}
