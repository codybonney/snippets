var Orientation = (function() {

    function Orientation() {}

    // return true if in portrait
    Orientation.prototype.portrait = function () {
        return window.orientation === 0 || window.orientation === 180;
    };

    // return true if in landscape
    Orientation.prototype.landscape = function () {
        return window.orientation === 90 || window.orientation === -90;
    };

    return Orientation;
})();

/*
    // Usage
    var o = new Orientation();

    if(o.portrait()) {
        console.log('In portrait mode');
    } else {
        console.log('Not in portrait mode');
    }
*/