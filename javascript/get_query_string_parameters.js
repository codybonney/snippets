var queryStringParameters = (function() {
	return location.search.slice(1).split("&").map(function(qs) {
		return {
			"Key": qs.split("=")[0],
			"Value": qs.split("=")[1]
		}
	});
})();