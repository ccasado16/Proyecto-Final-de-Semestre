import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/config/paleta.dart';
import 'package:flutter/material.dart';

class AvatarPerfil extends StatelessWidget {
  final String url;
  final bool activo;
  final bool borde;

  const AvatarPerfil({
    Key? key,
    required this.url,
    this.activo = false,
    this.borde = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Paleta.azul,
          child: CircleAvatar(
            radius: borde ? 17 : 20,
            backgroundColor: Colors.grey[200],
            backgroundImage: CachedNetworkImageProvider(url),
          ),
        ),
        activo
            ? Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Paleta.online,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
