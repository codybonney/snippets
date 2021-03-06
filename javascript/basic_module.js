var BasicModule;
(function (BasicModule) {

    BasicModule.BasicClass = (function () {

        function BasicClass(val) {
            this.val = val;
        }

        BasicClass.prototype.output = function () {
            return "Stored value is: " + this.val;
        };

        return BasicClass;
    })();

})(BasicModule || (BasicModule = {}));

var basic = new BasicModule.BasicClass("someValue");
console.log(basic.output());