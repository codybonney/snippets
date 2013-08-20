function changeViewportWidth() {
    var portrait = window.orientation === 0 || window.orientation === 180;
    var landscape =(window.orientation === 90 || window.orientation === -90);

    if(portrait) {
        $('meta[name=viewport]').attr('content','width=790');
    }
    else if(landscape) {
        $('meta[name=viewport]').attr('content','width=1044');
    }
}

$(window).bind('orientationchange', changeViewportWidth);
changeViewportWidth();