import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/config/paleta.dart';
import 'package:facebook_clone/modelos/modelos.dart';
import 'package:facebook_clone/widgets/avatar_perfil.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Publicacion extends StatelessWidget {
  final Post post;

  const Publicacion({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _PublicacionHeader(post: post),
                const SizedBox(height: 4),
                Text(post.descripcion),
                post.url != null
                    ? const SizedBox.shrink()
                    : const SizedBox(height: 6),
              ],
            ),
          ),
          post.url != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: CachedNetworkImage(imageUrl: post.url),
                )
              : const SizedBox.shrink(),

          // Estadisticas del post (likes, comentarios y compartidos)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: _PostEstadisticas(post: post),
          ),
        ],
      ),
    );
  }
}

class _PublicacionHeader extends StatelessWidget {
  final Post post;

  const _PublicacionHeader({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // foto de perfil
        AvatarPerfil(url: post.usuario.url),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // nombre del usuario
              Text(
                post.usuario.nombre,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  // hace cuanto tiempo de la publicacion
                  Text(
                    '${post.tiempoAtras} · ',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),

                  // icono del planeta tierra
                  Icon(
                    Icons.public,
                    color: Colors.grey[600],
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () => print('Más opciones'),
          icon: const Icon(Icons.more_horiz),
        ),
      ],
    );
  }
}

class _PostEstadisticas extends StatelessWidget {
  final Post post;

  const _PostEstadisticas({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Paleta.azul,
                shape: BoxShape.circle,
              ),

              // icono likes
              child: const Icon(
                Icons.thumb_up,
                size: 10,
                color: Colors.white,
              ),
            ),

            const SizedBox(width: 4),

            // indicador de likes
            Expanded(
              child: Text(
                '${post.likes}',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),

            // indicador de comentarios
            Text(
              '${post.comentarios} Comentarios',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),

            const SizedBox(width: 8),

            // indicador de compartidos
            Text(
              '${post.compartidos} Compartido',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          children: [
            // Boton like
            _PostBotones(
              icono: Icon(
                MdiIcons.thumbUpOutline,
                color: Colors.grey[600],
                size: 20,
              ),
              etiqueta: 'Me gusta',
              onTap: () => print('Me gusta'),
            ),

            // Boton comentarios
            _PostBotones(
              icono: Icon(
                MdiIcons.commentOutline,
                color: Colors.grey[600],
                size: 20,
              ),
              etiqueta: 'Comentar',
              onTap: () => print('Comentar'),
            ),

            // Boton compartir
            _PostBotones(
              icono: Icon(
                MdiIcons.shareOutline,
                color: Colors.grey[600],
                size: 25,
              ),
              etiqueta: 'Compartir',
              onTap: () => print('Compartir'),
            ),
          ],
        ),
      ],
    );
  }
}

// fabrica de botones (para simplificar)
class _PostBotones extends StatelessWidget {
  final Icon icono;
  final String etiqueta;
  final Function onTap;

  const _PostBotones({
    Key? key,
    required this.icono,
    required this.etiqueta,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: onTap(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            height: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icono,
                const SizedBox(width: 4),
                Text(etiqueta),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
