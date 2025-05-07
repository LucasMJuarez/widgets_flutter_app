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
  MenuItems(
    title: 'Ui controls and buttons',
    subTitle: 'Serie de controles para la UI',
    link: '/ui-controls',
    icon: Icons.card_giftcard_outlined,
  ),

  MenuItems(
    title: 'InfiniteScroll and pull to refresh',
    subTitle: 'InfiniteScroll y pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_outlined,
  ),

  MenuItems(
    title: 'Counter Screen',
    subTitle: 'Test de contador',
    link: '/counter',
    icon: Icons.countertops_outlined,
  ),

  MenuItems(
    title: 'Theme Changer',
    subTitle: 'Cambiar tema de la app',
    link: '/theme-changer',
    icon: Icons.color_lens_outlined,
  ),
];
