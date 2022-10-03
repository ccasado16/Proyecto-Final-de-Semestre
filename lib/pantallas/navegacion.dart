import 'package:facebook_clone/pantallas/pantallas.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Navegacion extends StatefulWidget {
  @override
  State<Navegacion> createState() => _NavegacionState();
}

class _NavegacionState extends State<Navegacion> {
  final List<Widget> _pantallas = [
    Home(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final List<IconData> _iconos = const [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.bellOutline,
    Icons.menu,
  ];

  int _indexSeleccionado = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _iconos.length,
      child: Scaffold(
        body: IndexedStack(
          index: _indexSeleccionado,
          children: _pantallas,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: miTabBar(
            iconos: _iconos,
            indexSeleccionado: _indexSeleccionado,
            onTap: (index) => setState(() => _indexSeleccionado = index),
          ),
        ),
      ),
    );
  }
}
