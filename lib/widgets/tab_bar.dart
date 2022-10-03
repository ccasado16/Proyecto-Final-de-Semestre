import 'package:facebook_clone/config/paleta.dart';
import 'package:flutter/material.dart';

class miTabBar extends StatelessWidget {
  final List<IconData> iconos;
  final int indexSeleccionado;
  final Function(int) onTap;

  const miTabBar({
    Key? key,
    required this.iconos,
    required this.indexSeleccionado,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Paleta.azul,
            width: 3,
          ),
        ),
      ),
      tabs: iconos
          .asMap()
          .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e,
                    color:
                        i == indexSeleccionado ? Paleta.azul : Colors.black45,
                    size: 30,
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
