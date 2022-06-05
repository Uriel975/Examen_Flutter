
class ImagenClima {
  String getImagen(int estado) {
    if (estado <= 84 && estado > 80) {
      return 'https://cdn.pixabay.com/photo/2014/04/02/10/50/tornado-304745_1280.png';
    } else if (estado < 40 && estado > 29) {
      return 'https://images.vexels.com/media/users/3/141340/isolated/preview/452f546adb356fd9b6b5fbc1ad383fed-icono-de-tormenta.png';
    } else if (estado < 60 && estado > 39) {
      return 'https://flyclipart.com/thumb2/parcialmente-nublado-lluvia-icono-934357.png';
    } else if (estado < 30) {
      return 'https://cdn-icons-png.flaticon.com/512/1684/1684425.png';
    } else if (estado < 70 && estado > 59) {
      return 'https://cdn-icons-png.flaticon.com/512/91/91977.png';
    } else if (estado < 80 && estado > 69) {
      return 'https://www.pngmart.com/files/20/Summer-Sun-PNG-HD.png';
    } else if (estado == 100) {
      return 'https://cdn-icons-png.flaticon.com/512/1536/1536260.png';
    } else if (estado < 90 && estado > 84) {
      return 'https://cdn-icons-png.flaticon.com/512/1140/1140045.png';
    } else {
      return '';
    }
  }
}
