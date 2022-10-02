import 'package:facebook_clone/modelos/modelos.dart';

class Story {
  final Usuario usuario;
  final String url;
  final bool visto;

  const Story({
    required this.usuario,
    required this.url,
    this.visto = false,
  });
}
