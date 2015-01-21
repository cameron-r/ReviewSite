jQuery(function () {
    var feature_banner = $('#feature-banner-container');
    var close_button = $('#feature-banner-close');
    
    close_button.on('click', function() {
        feature_banner.remove();
    });
});
