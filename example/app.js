const maps = require('ti.googlemaps');
maps.setAPIKey('AIzaSyDAAarng8FnkiEBJYAO0m0bklZHKyONWAc');

const window = Ti.UI.createWindow();

const mapView = maps.createView({
    region: { // Camera center of the map
        latitude: 45.41568397620635,
        longitude: -73.68590354919434,
        latitudeDelta: 0.1,
        longitudeDelta: 0.1
    }
});

var image = require('ti.svg').SVGImage('icon.svg');
window.add(Ti.UI.createImageView({ image }))

var annotation = maps.createAnnotation({
    latitude: 45.41568397620635,
    longitude: -73.68590354919434,
    image
});

mapView.addAnnotation(annotation);
window.add(mapView);

window.open();
