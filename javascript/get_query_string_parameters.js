var queryStringParameters = (function() {
	var url = location;
	var querystring = location.search.slice(1);
	return querystring.split("&").map(function(qs) {
		return { "Key": qs.split("=")[0], "Value": qs.split("=")[1], "Pretty Value": decodeURIComponent(qs.split("=")[1]).replace(/\+/g," ") }
	});
})();