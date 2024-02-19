

import 'package:flutter/material.dart';

class MenuItem{
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

 const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
  
}


const appMenuItems = <MenuItem> [
  MenuItem(title:"Temas" , subtitle: "Temas de colores" , link: "/themes" , icon: Icons.add_to_home_screen_sharp),
  MenuItem(title:"Counter" , subtitle: "Counter Screeen" , link: "/counter-screen" , icon: Icons.control_point_duplicate_rounded),
  MenuItem(title:"Botones" , subtitle: "Listado de botones" , link: "/buttons" , icon: Icons.backpack),
  MenuItem(title:"Tarjetas" , subtitle: "Contenedor Estilizado" , link: "/cards" , icon: Icons.credit_card),
  MenuItem(title:"Progress Bar" , subtitle: "Pantalla de carga" , link: "/progress" , icon: Icons.bar_chart_rounded),
  MenuItem(title:"SnackBar" , subtitle: "Mensajes emergentes" , link: "/snackbar" , icon: Icons.message),
  MenuItem(title:"Animated Container", subtitle: "Contenedor aniumado", link: "/animated_container", icon: Icons.animation),
  MenuItem(title:"UI Controls" , subtitle: "Controles de ui" , link: "/ui_controls" , icon: Icons.text_fields),

  MenuItem(title:"Tutorial" , subtitle: "Tutorial de Flutter" , link: "/tutorial" , icon: Icons.school),
  MenuItem(title:"Scroll Infinito" , subtitle: "Scroll infinitouu" , link: "/infinite" , icon: Icons.replay_circle_filled_outlined),

];