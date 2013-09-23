var Orientation = (function() {
    var self = this;

    function Orientation(args) {
        self.args = args;
    }

    // return true if in portrait
    Orientation.prototype.portrait = function () {
        return window.innerHeight > window.innerWidth;
    };

    // return true if in landscape
    Orientation.prototype.landscape = function () {
        return window.innerWidth > window.innerHeight;
    };

    Orientation.prototype.callbacks = function () {
        // onOrientationChange callback
        if(self.args && self.args.onOrientationChange) {
            self.args.onOrientationChange();
        }

        // onPortrait callback
        if(self.args && self.args.onPortrait && Orientation.prototype.portrait()) {
            self.args.onPortrait();
        }

        // onLandscape callback
        if(self.args && self.args.onLandscape && Orientation.prototype.landscape()) {
            self.args.onLandscape();
        }
    };

    // bind orientation change to callbacks
    window.onorientationchange = Orientation.prototype.callbacks;

    return Orientation;
})();


/*
    // Usage
    var o = new Orientation({
        onOrientationChange: function() {
            console.log('Orientation change');
        },
        onPortrait: function() {
            console.log('portrait mode!');
        },
        onLandscape: function() {
            console.log('landscape mode!');
        }
    });

    o.callbacks();

    if(o.portrait()) {
        console.log('In portrait mode');
    } else {
        console.log('Not in portrait mode');
    }
*/