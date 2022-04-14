var exec = require('cordova/exec');

module.exports = {
    coolMethod:function (arg0, success, error) {
        exec(success, error, 'wswPlugin', 'coolMethod', [arg0]);
    },
    haha:function (success, error) {
        exec(success, error, 'wswPlugin', 'haha', []);
    }
}
