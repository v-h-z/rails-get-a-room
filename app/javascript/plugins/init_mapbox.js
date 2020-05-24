// var mapboxgl = require('mapbox-gl/dist/mapbox-gl.js');
import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 200, maxZoom: 15, duration: 0 });
};

const addMarkers = (markers, map) => {
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });
  }

const initMapbox = () => {

  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into

    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    map.scrollZoom.disable();
    map.touchZoomRotate.enable({ around: 'center' });
    map.addControl(new mapboxgl.NavigationControl());
    // if (map.tap) map.tap.disable();
    // if (map.tap) map.dragging.disable();

    const markers = JSON.parse(mapElement.dataset.markers);

    addMarkers(markers, map);

    fitMapToMarkers(map, markers);

  }
};

export { initMapbox };
