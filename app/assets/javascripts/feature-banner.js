jQuery(function () {
    var feature_banner = $('#feature-banner-container');
    var close_button = $('#feature-banner-close');
    var feature_banner_id = $('#feature-banner-id').html();
    
    var tell_server_latest_feature_banner_seen = function() {
      $.ajax({
            type: 'POST',
            <% user_path %>
            url: '<% user_path %>seen_feature_banner/'+feature_banner_id,
            data: { feature_banner_id: feature_banner_id }
      });
    };
    
    close_button.on('click', function() {
        feature_banner.remove();
        tell_server_latest_feature_banner_seen();
    });
});
