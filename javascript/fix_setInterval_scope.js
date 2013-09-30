var MyClass = (function () {

    function MyClass() {
	    var self = this;
		self.myInterval = setInterval(function() {
			self.myClassMethod();
		}, 4000);
    }

	MyClass.prototype.myClassMethod = function() {
		console.log(this);
	};

    return MyClass;
})();

var myInstance = new MyClass();