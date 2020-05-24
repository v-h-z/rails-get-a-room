import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('room_address');
  if (addressInput) {
    places({ container: addressInput });
  }
  const searchInput = document.getElementById('search_query');
  if (searchInput) {
    places({ container: searchInput });
  }
};

export { initAutocomplete };
