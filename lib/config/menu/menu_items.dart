

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
  MenuItem(title:"Botones" , subtitle: "Listado de botones" , link: "/buttons" , icon: Icons.backpack),
  MenuItem(title:"Tarjetas" , subtitle: "Contenedor Estilizado" , link: "/cards" , icon: Icons.credit_card),
  MenuItem(title:"Progress Bar" , subtitle: "Pantalla de carga" , link: "/progress" , icon: Icons.bar_chart_rounded),

];