import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:youmspay/ui/homePage.dart';
import 'package:youmspay/utils/themeService.dart';
import 'package:youmspay/utils/themedef.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


Future<void> main() async{
  await GetStorage.init();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Youm's",
      themeMode:ThemeService().theme,
      theme: ThemeClass.light,
      darkTheme: ThemeClass.dark,
      home: HomePage(),
    );
  }
}


