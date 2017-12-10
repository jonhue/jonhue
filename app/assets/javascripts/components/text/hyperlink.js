document.addEventListener( 'turbolinks:load', function() {
    componentsTextHyperlinkPreventDefault();
});




function componentsTextHyperlinkPreventDefault() {
    $('a.preventdefault').click(function(event) {
        event.preventDefault();
    });
};
