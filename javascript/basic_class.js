var Basic = (function () {

    function Basic(val) {
        this.val = val;
    }

    Basic.prototype.output = function () {
        return "Stored value is: " + this.val;
    };

    return Basic;
})();

var basic = new Basic("someValue");
console.log(basic.output());