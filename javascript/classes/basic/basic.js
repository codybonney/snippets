var Basic = (function () {

    function Basic(val) {
        this.val = val;
    }

    Basic.prototype.output = function () {
        return "Stored value is: " + this.val;
    };

    return Basic;
})();