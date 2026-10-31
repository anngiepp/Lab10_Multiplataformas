# labxy – LabFlix (clon de Netflix en Flutter)

Autora: Angie Portocarrero – angie.portocarrero@tecsup.edu.pe

App móvil inspirada en el diseño de Netflix: selección de perfil, inicio con banner y filas de títulos, detalle con episodios, búsqueda y "Mi lista".

## Cómo ejecutarlo

```bash
cd labxy
flutter create . --project-name labxy   # genera android/ ios/ web/ sin tocar lib/ ni pubspec
flutter pub get
flutter run
flutter test                             # corre las pruebas
```

> Las imágenes de la nube se cargan desde picsum.photos, así que el emulador necesita internet.

## Qué se usó y dónde

| Requisito | Dónde está |
|---|---|
| **ListView** | `home_screen.dart` (vertical + filas horizontales con `ListView.builder`), `detalle_screen.dart`, `mi_lista_screen.dart`, `buscar_screen.dart` |
| **ListTile** | Episodios y títulos similares (detalle), Mi lista, resultados de búsqueda |
| **Listas y Mapas** | `data/datos.dart`: `List<Map<String, dynamic>>` de perfiles y títulos, cada título tiene una lista de episodios (mapas) |
| **Rutas** | `main.dart`: rutas con nombre `/`, `/home`, `/detalle`, `/milista`, `/buscar` y paso de `arguments` |
| **Tema global** | `theme.dart`: colores, fuente por defecto, `textTheme`, `cardTheme`, `listTileTheme`, botones |
| **Cards** | `poster_card.dart` (pósters) y cada elemento de Mi lista |
| **Row / Column** | Botones del banner, datos del detalle, perfiles, acciones |
| **3 tipos de letra** | **Bebas Neue** (logo y títulos), **Poppins** (texto general), **Playfair Display Italic** (descripciones y "¿Quién está viendo?") – en `assets/fonts/` |
| **Imágenes locales** | `assets/images/`: avatares, banner y 4 pósters (`Image.asset`) |
| **Imágenes en la nube** | 8 pósters con `Image.network` (con `loadingBuilder` y `errorBuilder`) |

En cada póster hay un iconito: 📱 = imagen local, ☁️ = imagen de la nube.

## Pruebas

- `test/datos_test.dart`: pruebas unitarias de las funciones de búsqueda, categorías y Mi lista.
- `test/widget_test.dart`: pruebas de interfaz de la pantalla de perfiles y de Mi lista (mostrar y borrar con ListTile).

## Estructura

```
lib/
  main.dart            rutas y MaterialApp
  theme.dart           tema global
  data/datos.dart      listas y mapas
  screens/             perfiles, home, detalle, mi lista, buscar
  widgets/             PosterCard e ImagenTitulo
assets/
  fonts/               3 fuentes
  images/              imágenes locales
test/
```
