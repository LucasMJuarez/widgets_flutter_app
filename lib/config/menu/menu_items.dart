import 'package:flutter/material.dart' show IconData, Icons;

class MenuItems {
  final String title;
  final String subTitle;
  final String link;

  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subTitle: 'Varios botnes en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

  MenuItems(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),

  MenuItems(
    title: 'ProgressIndicator',
    subTitle: 'Un contenedor estilizado',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'SnackBar Y dialogs',
    subTitle: 'Indicador en de pantalla',
    link: '/snackbar',
    icon: Icons.info_outline_rounded,
  ),
  MenuItems(
    title: 'Animated container',
    subTitle: 'Stateful widget que anima su contenedor',
    link: '/animated',
    icon: Icons.check_box_outline_blank,
  ),
];
