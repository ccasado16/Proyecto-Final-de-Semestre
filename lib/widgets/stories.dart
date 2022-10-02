import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/config/paleta.dart';
import 'package:facebook_clone/modelos/modelos.dart';
import 'package:facebook_clone/widgets/avatar_perfil.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final Usuario usuarioActual;
  final List<Story> stories;

  const Stories({
    Key? key,
    required this.usuarioActual,
    required this.stories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 8,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + stories.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4,
              ),
              child: _TarjetaStory(
                crearStory: true,
                usuarioActual: usuarioActual,
              ),
            );
          }

          final Story story = stories[index - 1];

          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            child: _TarjetaStory(
              story: story,
            ),
          );
        },
      ),
    );
  }
}

class _TarjetaStory extends StatelessWidget {
  bool crearStory;
  Usuario? usuarioActual;
  Story? story;

  _TarjetaStory({
    Key? key,
    this.crearStory = false,
    this.usuarioActual,
    this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: crearStory ? usuarioActual!.url : story!.url,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),

        // Oscurecimiento de las stories
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            gradient: Paleta.storyGradient,
            borderRadius: BorderRadius.circular(12),
          ),
        ),

        // Fotos de los usuarios de las stories
        Positioned(
          top: 8,
          left: 8,
          child: crearStory
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(Icons.add),
                    iconSize: 30,
                    color: Paleta.azul,
                    onPressed: () => print('Añadir story'),
                  ),
                )
              : AvatarPerfil(
                  url: story!.usuario.url,
                  borde: story!.visto,
                ),
        ),

        // Nombre de los usuarios de las stories
        Positioned(
          bottom: 8,
          left: 8,
          right: 8,
          child: Text(
            crearStory ? 'Añadir a historia' : story!.usuario.nombre,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
