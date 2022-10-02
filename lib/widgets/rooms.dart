import 'package:facebook_clone/config/paleta.dart';
import 'package:facebook_clone/modelos/modelos.dart';
import 'package:facebook_clone/widgets/avatar_perfil.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<Usuario> usuariosOnline;

  const Rooms({
    Key? key,
    required this.usuariosOnline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 4,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + usuariosOnline.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: _CrearBotonRoom(),
            );
          }

          final Usuario usuario = usuariosOnline[index - 1];

          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: AvatarPerfil(
              url: usuario.url,
              activo: true,
            ),
          );
        },
      ),
    );
  }
}

class _CrearBotonRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        side: BorderSide(
          width: 3,
          color: Colors.blueAccent,
        ),
      ),
      onPressed: () => print('Crear Room'),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) =>
                Paleta.crearRoomGradient.createShader(rect),
            child: Icon(
              Icons.video_call,
              size: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Text('Crear\nRoom'),
        ],
      ),
    );
  }
}
