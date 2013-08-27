$.ajax({
    url: "target.php",
    dataType: "json",
    type: "post",
    error: function(info, status) {
        console.log('error');
        console.log(info);
        console.log(status);
    },
    success: function(response) {
        console.log(response);
    }
});