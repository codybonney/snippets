// adds "touch-device" class to <html> element if touch device
if ("ontouchstart" in document.documentElement) {
    document.documentElement.className += " touch-device";
}