/**
 * Created by StevenNunez on 12/26/13.
 */
$(function() {
    handler = Gmaps.build('Google');
    handler.buildMap({ provider: {}, internal: {id: 'map'}}, function () {
        markers = handler.addMarkers([
            {
                "lat": 40.75387588027257,
                "lng": -73.98961368372976,
                "infowindow": "My Message "
            }
        ]);
        handler.bounds.extendWith(markers);
        handler.fitMapToBounds();
    });
});