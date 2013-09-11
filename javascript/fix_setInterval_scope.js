MyClass.prototype.resetInterval = function() {
    clearInterval(this.myInterval);

    var self = this;
    this.myInterval = setInterval(function() {
        self.myFunction.apply(self);
    }, 4000);
};