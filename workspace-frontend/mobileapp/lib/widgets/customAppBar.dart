import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/themeService.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text('Youm\'s',
        style: TextStyle(
          color: Get.isDarkMode?Colors.white:Colors.black,
        ),),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        leading: GestureDetector(
          onTap: () {
            ThemeService().switchTheme();
          },
          child: Icon(
              Get.isDarkMode ? Icons.wb_sunny_outlined : Icons.nightlight_round,
              size: 20,
              color: Get.isDarkMode ? Colors.white : Colors.black),
        ),
        );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
