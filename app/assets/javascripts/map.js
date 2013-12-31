/**
 * Created by StevenNunez on 12/26/13.
 */
$(function () {
    $.getJSON('/', function (data) {
        handler = Gmaps.build('Google');
        handler.buildMap({ provider: {}, internal: {id: 'map'}}, function () {
            markers = handler.addMarkers(data);
            handler.bounds.extendWith(markers);
            handler.fitMapToBounds();
        });
    });
});
;