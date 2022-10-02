import 'package:facebook_clone/modelos/modelos.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ContenedorPost extends StatelessWidget {
  final Usuario usuarioActual;

  const ContenedorPost({
    Key? key,
    required this.usuarioActual,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      color: Colors.white,
      child: Column(children: [
        Row(
          children: [
            // Foto del usuario
            AvatarPerfil(url: usuarioActual.url),
            const SizedBox(
              width: 8,
            ),

            // input texto
            const Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: '¿Qué estás pensando?',
                ),
              ),
            ),
          ],
        ),
        const Divider(
          height: 10,
          thickness: 0.5,
        ),

        // Botones
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Boton Live
              TextButton.icon(
                onPressed: () => print('Live'),
                icon: const Icon(
                  Icons.videocam,
                  color: Colors.red,
                ),
                label: Text('Live'),
              ),

              const VerticalDivider(
                width: 8,
              ),

              // Boton Fotos
              TextButton.icon(
                onPressed: () => print('Fotos'),
                icon: const Icon(
                  Icons.photo_library,
                  color: Colors.green,
                ),
                label: Text('Fotos'),
              ),

              const VerticalDivider(
                width: 8,
              ),

              // Botom Room
              TextButton.icon(
                onPressed: () => print('Room'),
                icon: const Icon(
                  Icons.video_call,
                  color: Colors.purpleAccent,
                ),
                label: Text('Room'),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
