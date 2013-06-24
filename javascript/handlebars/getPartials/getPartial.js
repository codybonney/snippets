Handlebars.getPartial = function(name, key) {
    $.ajax({
        url : 'assets/js/templates/' + name + '.handlebars',
        datatype: 'text/javascript',
        success : function(response, status, jqXHR) {
            Handlebars.registerPartial(key, Handlebars.compile(response));  // Button Module
        },
        async : false
    });
};
Handlebars.getPartial('button-module', 'button');