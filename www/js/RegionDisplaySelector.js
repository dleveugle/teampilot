function showRegion(regionId) {
    // Cache toutes les régions d'abord
    $('div.tp-Region').each(function(){ this.style.display = 'none';});
  

    // Affiche la région spécifique
    document.querySelector('#' + regionId).style.display = 'block';
}