import 'package:facebook_clone/modelos/modelos.dart';
import 'package:flutter/material.dart';

final Usuario usuarioActual = Usuario(
    nombre: 'Herta Yundt',
    url:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80');

final List<Usuario> usuariosOnline = [
  Usuario(
    nombre: 'Reynold Wolff',
    url:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  Usuario(
      nombre: 'Haskell Reynolds',
      url:
          'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80'),
  Usuario(
      nombre: 'Claudie Yost',
      url:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  Usuario(
      nombre: 'Wilfred Jerde',
      url:
          'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'),
  Usuario(
      nombre: 'Coralie Goldner',
      url:
          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
  Usuario(
      nombre: 'Lupe Labadie',
      url:
          'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80'),
  Usuario(
      nombre: 'Glennie Runolfsson',
      url:
          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80'),
  Usuario(
      nombre: 'Lillie Gleason',
      url:
          'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80'),
  Usuario(
      nombre: 'Spencer Harber',
      url:
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
  Usuario(
      nombre: 'Jalen Toy',
      url:
          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
  Usuario(
      nombre: 'Mozell Towne',
      url:
          'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
  Usuario(
      nombre: 'Susan Kub',
      url:
          'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80'),
  Usuario(
      nombre: 'Olin Hilpert',
      url:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  Usuario(
      nombre: 'Ophelia Braun',
      url:
          'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'),
  Usuario(
      nombre: 'Elissa Streich',
      url:
          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
  Usuario(
      nombre: 'Jolie Abshire',
      url:
          'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80'),
  Usuario(
      nombre: 'Taya Hessel',
      url:
          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80'),
  Usuario(
      nombre: 'Burdette West',
      url:
          'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80'),
  Usuario(
      nombre: 'Hobart Gutmann',
      url:
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
  Usuario(
      nombre: 'Lucile Hegmann',
      url:
          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
];

final List<Story> stories = [
  Story(
      usuario: usuariosOnline[4],
      url:
          'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80'),
  Story(
      usuario: usuariosOnline[7],
      url:
          'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
      visto: true),
  Story(
      usuario: usuariosOnline[2],
      url:
          'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80'),
  Story(
      usuario: usuariosOnline[1],
      url:
          'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      visto: true),
  Story(
      usuario: usuariosOnline[10],
      url:
          'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80'),
  Story(
      usuario: usuariosOnline[5],
      url:
          'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80'),
  Story(
      usuario: usuariosOnline[9],
      url:
          'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
      visto: true),
  Story(
      usuario: usuariosOnline[6],
      url:
          'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80'),
  Story(
      usuario: usuariosOnline[3],
      url:
          'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      visto: true),
  Story(
      usuario: usuariosOnline[8],
      url:
          'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80'),
];

final List<Post> posts = [
  Post(
      usuario: usuarioActual,
      descripcion: 'Abuso Mano',
      tiempoAtras: '45m',
      url:
          'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      likes: 15,
      comentarios: 3,
      compartidos: 1),
  Post(
      usuario: usuariosOnline[2],
      descripcion: 'Velit sapiente harum iste nemo in tempore sint.',
      tiempoAtras: '2hr',
      url:
          'https://images.unsplash.com/photo-1664476782436-34bebae5c87e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      likes: 5,
      comentarios: 2,
      compartidos: 1),
  Post(
      usuario: usuariosOnline[9],
      descripcion: 'Loba xd',
      tiempoAtras: '5hr',
      url:
          'https://images.unsplash.com/photo-1573331519317-30b24326bb9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
      likes: 12,
      comentarios: 2,
      compartidos: 1),
  Post(
      usuario: usuariosOnline[6],
      descripcion: 'Error magni quod et rerum vitae.',
      tiempoAtras: '3hr',
      url:
          'https://images.unsplash.com/photo-1575535468632-345892291673?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      likes: 12,
      comentarios: 2,
      compartidos: 1),
  Post(
      usuario: usuariosOnline[8],
      descripcion: 'Amia pa kchar',
      tiempoAtras: '50m',
      url:
          'https://images.unsplash.com/photo-1664433977575-6030c8641880?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8aG1lbnZRaFVteE18fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
      likes: 6,
      comentarios: 2,
      compartidos: 5),
  Post(
      usuario: usuariosOnline[10],
      descripcion: 'Lero Lero',
      tiempoAtras: '50m',
      url: 'https://images.unsplash.com/photo-1525253086316-d0c936c814f8',
      likes: 6,
      comentarios: 2,
      compartidos: 5),
];
