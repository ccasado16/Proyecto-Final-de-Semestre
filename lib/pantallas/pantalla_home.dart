import 'package:facebook_clone/config/paleta.dart';
import 'package:facebook_clone/datos/datos.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'facebook',
              style: TextStyle(
                color: Paleta.azul,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              // Boton buscar
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.search),
                  iconSize: 30,
                  color: Colors.black,
                  onPressed: () => print('Buscar'),
                ),
              ),

              // Boton messenger
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(MdiIcons.facebookMessenger),
                  iconSize: 30,
                  color: Colors.black,
                  onPressed: () => print('Messenger'),
                ),
              ),
            ],
          ),

          // Seccion de crear post
          SliverToBoxAdapter(
            child: ContenedorPost(usuarioActual: usuarioActual),
          ),

          // Seccion de facebook Rooms
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: Rooms(usuariosOnline: usuariosOnline),
            ),
          ),

          // Seccion de facebook Stories
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            sliver: SliverToBoxAdapter(
              child: Stories(
                usuarioActual: usuarioActual,
                stories: stories,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
