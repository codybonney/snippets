var Basic = (function () {

    function Basic(val) {
        this.val = val;
    }

    Basic.prototype.output = function () {
        return "Store value is: " + this.val;
    };

    return Basic;
})();