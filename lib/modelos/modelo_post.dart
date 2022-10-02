import 'package:facebook_clone/modelos/modelos.dart';

class Post {
  final Usuario usuario;
  final String descripcion;
  final String tiempoAtras;
  final String url;
  final int likes;
  final int comentarios;
  final int compartidos;

  const Post({
    required this.usuario,
    required this.descripcion,
    required this.tiempoAtras,
    required this.url,
    required this.likes,
    required this.comentarios,
    required this.compartidos,
  });
}
