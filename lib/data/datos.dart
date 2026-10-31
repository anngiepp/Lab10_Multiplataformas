// Datos de la app usando Listas y Mapas

final List<Map<String, dynamic>> perfiles = [
  {'nombre': 'Ani', 'imagen': 'assets/images/perfil1.png'},
  {'nombre': 'Diego', 'imagen': 'assets/images/perfil2.png'},
  {'nombre': 'Lucía', 'imagen': 'assets/images/perfil3.png'},
  {'nombre': 'Niños', 'imagen': 'assets/images/perfil4.png'},
];

final List<String> categorias = [
  'Tendencias ahora',
  'Populares en Perú',
  'Series',
  'Películas',
];

// Si 'local' es true la imagen esta en assets, si no viene de internet
final List<Map<String, dynamic>> titulos = [
  {
    'id': 1,
    'titulo': 'Sombras de Lima',
    'tipo': 'Serie',
    'categoria': 'Tendencias ahora',
    'anio': 2025,
    'edad': '16+',
    'duracion': '2 temporadas',
    'imagen': 'assets/images/poster1.png',
    'local': true,
    'descripcion': 'Una detective del centro de Lima descubre que los casos sin resolver de su padre esconden una red que llega hasta el Congreso.',
    'reparto': ['Mariana Ríos', 'Andrés Salas', 'Kiara Quispe'],
    'episodios': [
      {'titulo': 'La llamada', 'duracion': '48 min'},
      {'titulo': 'Callejón sin salida', 'duracion': '51 min'},
      {'titulo': 'El archivo', 'duracion': '45 min'},
      {'titulo': 'Plaza de Armas', 'duracion': '53 min'},
    ],
  },
  {
    'id': 2,
    'titulo': 'Código Andino',
    'tipo': 'Serie',
    'categoria': 'Tendencias ahora',
    'anio': 2024,
    'edad': '13+',
    'duracion': '1 temporada',
    'imagen': 'assets/images/poster2.png',
    'local': true,
    'descripcion': 'Cuatro estudiantes de Arequipa crean una app que se vuelve viral... y atrae a las personas equivocadas.',
    'reparto': ['Luis Mamani', 'Sofía Paredes', 'Bruno Cárdenas'],
    'episodios': [
      {'titulo': 'Hola mundo', 'duracion': '42 min'},
      {'titulo': 'Deploy', 'duracion': '44 min'},
      {'titulo': 'Error 404', 'duracion': '40 min'},
    ],
  },
  {
    'id': 3,
    'titulo': 'Amazonía Oculta',
    'tipo': 'Película',
    'categoria': 'Tendencias ahora',
    'anio': 2023,
    'edad': '13+',
    'duracion': '1 h 52 min',
    'imagen': 'https://picsum.photos/seed/amazonia/300/450',
    'local': false,
    'descripcion': 'Un grupo de biólogos se pierde en la selva de Madre de Dios y encuentra algo que no aparece en ningún mapa.',
    'reparto': ['Rosa Huamán', 'Iván Torres'],
    'episodios': [],
  },
  {
    'id': 4,
    'titulo': 'Marea Roja',
    'tipo': 'Película',
    'categoria': 'Populares en Perú',
    'anio': 2025,
    'edad': '18+',
    'duracion': '2 h 05 min',
    'imagen': 'assets/images/poster3.png',
    'local': true,
    'descripcion': 'En un puerto del norte, un pescador se enfrenta a la mafia que controla el mar.',
    'reparto': ['Carlos Vílchez', 'Ana Lucía Pérez'],
    'episodios': [],
  },
  {
    'id': 5,
    'titulo': 'Noches en Barranco',
    'tipo': 'Serie',
    'categoria': 'Populares en Perú',
    'anio': 2024,
    'edad': '16+',
    'duracion': '3 temporadas',
    'imagen': 'https://picsum.photos/seed/barranco/300/450',
    'local': false,
    'descripcion': 'Músicos, bares y secretos: una banda intenta triunfar en la escena nocturna de Lima.',
    'reparto': ['Gonzalo Ruiz', 'Valeria Chang', 'Pedro Lazo'],
    'episodios': [
      {'titulo': 'Primer show', 'duracion': '39 min'},
      {'titulo': 'Puente de los Suspiros', 'duracion': '41 min'},
      {'titulo': 'La gira', 'duracion': '43 min'},
    ],
  },
  {
    'id': 6,
    'titulo': 'Desierto de Nazca',
    'tipo': 'Película',
    'categoria': 'Populares en Perú',
    'anio': 2022,
    'edad': '7+',
    'duracion': '1 h 38 min',
    'imagen': 'https://picsum.photos/seed/nazca/300/450',
    'local': false,
    'descripcion': 'Una niña y su abuelo vuelan sobre las líneas de Nazca y descubren una historia familiar olvidada.',
    'reparto': ['Mía Flores', 'Don Julio Ccori'],
    'episodios': [],
  },
  {
    'id': 7,
    'titulo': 'Ciudad Neón',
    'tipo': 'Serie',
    'categoria': 'Series',
    'anio': 2026,
    'edad': '16+',
    'duracion': '1 temporada',
    'imagen': 'assets/images/poster4.png',
    'local': true,
    'descripcion': 'En el año 2090, una hacker intenta apagar la inteligencia artificial que gobierna la ciudad.',
    'reparto': ['Kim Robles', 'Mateo Díaz'],
    'episodios': [
      {'titulo': 'Reinicio', 'duracion': '50 min'},
      {'titulo': 'Firewall', 'duracion': '47 min'},
    ],
  },
  {
    'id': 8,
    'titulo': 'Los Herederos',
    'tipo': 'Serie',
    'categoria': 'Series',
    'anio': 2023,
    'edad': '13+',
    'duracion': '4 temporadas',
    'imagen': 'https://picsum.photos/seed/herederos/300/450',
    'local': false,
    'descripcion': 'Tres hermanos pelean por la empresa familiar después de la muerte de su madre.',
    'reparto': ['Fernando Aguilar', 'Camila Soto', 'Renzo Vega'],
    'episodios': [
      {'titulo': 'El testamento', 'duracion': '55 min'},
      {'titulo': 'Accionistas', 'duracion': '52 min'},
    ],
  },
  {
    'id': 9,
    'titulo': 'Cumbres',
    'tipo': 'Serie',
    'categoria': 'Series',
    'anio': 2025,
    'edad': '7+',
    'duracion': '1 temporada',
    'imagen': 'https://picsum.photos/seed/cumbres/300/450',
    'local': false,
    'descripcion': 'Documental sobre los andinistas que subieron el Huascarán en invierno.',
    'reparto': ['Narrado por Elena Ruiz'],
    'episodios': [
      {'titulo': 'Campo base', 'duracion': '35 min'},
      {'titulo': 'La cima', 'duracion': '38 min'},
    ],
  },
  {
    'id': 10,
    'titulo': 'El Último Inca',
    'tipo': 'Película',
    'categoria': 'Películas',
    'anio': 2021,
    'edad': '13+',
    'duracion': '2 h 20 min',
    'imagen': 'https://picsum.photos/seed/inca/300/450',
    'local': false,
    'descripcion': 'Drama histórico sobre la resistencia en Vilcabamba.',
    'reparto': ['Tito Condori', 'María Inés Ayala'],
    'episodios': [],
  },
  {
    'id': 11,
    'titulo': 'Pixel Rebelde',
    'tipo': 'Película',
    'categoria': 'Películas',
    'anio': 2024,
    'edad': 'TP',
    'duracion': '1 h 30 min',
    'imagen': 'https://picsum.photos/seed/pixel/300/450',
    'local': false,
    'descripcion': 'Un personaje de videojuego escapa de su consola y se pierde en el mundo real.',
    'reparto': ['Voz de Diego Ramos'],
    'episodios': [],
  },
  {
    'id': 12,
    'titulo': 'La Casa del Puerto',
    'tipo': 'Película',
    'categoria': 'Películas',
    'anio': 2020,
    'edad': '16+',
    'duracion': '1 h 47 min',
    'imagen': 'https://picsum.photos/seed/puerto/300/450',
    'local': false,
    'descripcion': 'Una familia se muda al Callao a una casa antigua donde nadie quiso vivir por años.',
    'reparto': ['Gabriela León', 'Óscar Medina'],
    'episodios': [],
  },
];

// Lista que guarda lo que el usuario agrega a "Mi lista"
final List<Map<String, dynamic>> miLista = [];

List<Map<String, dynamic>> porCategoria(String categoria) {
  return titulos.where((t) => t['categoria'] == categoria).toList();
}

List<Map<String, dynamic>> buscar(String texto) {
  if (texto.isEmpty) return titulos;
  return titulos
      .where((t) => t['titulo'].toString().toLowerCase().contains(texto.toLowerCase()))
      .toList();
}

bool estaEnMiLista(Map<String, dynamic> titulo) {
  return miLista.any((t) => t['id'] == titulo['id']);
}

void agregarOQuitar(Map<String, dynamic> titulo) {
  if (estaEnMiLista(titulo)) {
    miLista.removeWhere((t) => t['id'] == titulo['id']);
  } else {
    miLista.add(titulo);
  }
}
