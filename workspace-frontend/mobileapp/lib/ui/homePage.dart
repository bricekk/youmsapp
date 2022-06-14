import 'package:flutter/material.dart';
import 'package:youmspay/widgets/customAppBar.dart';
import 'package:youmspay/widgets/customBottomAppBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomAppBar(),
      body:  Container(),
    );
  }
}
