import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {

  int active = 1;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: Container(
        height: 55,
        margin: EdgeInsets.only(left: 20,right: 20),
        padding: EdgeInsets.only(top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){_changeState(1);},
              child: Column(
                children: [
                  Transform.rotate(angle: 77.0,
                  child:Icon(Icons.compare_arrows,
                        color: Get.isDarkMode?Colors.white:Colors.black,
                        size: 35,),
                  ),
                  active==1?Container(
                    height: 1,
                    width: 35,
                    color: Get.isDarkMode?Colors.white:Colors.black,
                  ):Container()!,
              ]
              ),
            ),
            GestureDetector(
              onTap: (){_changeState(2);},
              child: Container(
                child: Column(
                  children:[ Icon(Icons.bar_chart_rounded,
                    color: Get.isDarkMode?Colors.white:Colors.black,
                    size: 35,),
                    active==2?Container(
                      height: 1,
                      width: 35,
                      color: Get.isDarkMode?Colors.white:Colors.black,
                    ):Container()!,
                ]
                ),
              ),
            ),
            GestureDetector(
              onTap: (){_changeState(3);},
              child: Container(
                child: Column(
                    children:[ Icon(Icons.qr_code_2,
                      color: Get.isDarkMode?Colors.white:Colors.black,
                      size: 35,),
                      active==3?Container(
                        height: 1,
                        width: 35,
                        color: Get.isDarkMode?Colors.white:Colors.black,
                      ):Container()!
                    ]
                ),
              ),
            ),
            GestureDetector(
              onTap: (){_changeState(4);},
              child: Container(
                child: Column(
                    children:[ Icon(Icons.notifications,
                      color: Get.isDarkMode?Colors.white:Colors.black,
                      size: 35,),
                      active==4?Container(
                        height: 1,
                        width: 35,
                        color: Get.isDarkMode?Colors.white:Colors.black,
                      ):Container()!
                    ]
                ),
              ),
            ),
            GestureDetector(
              onTap: (){_changeState(5);},
              child: Container(
                child: Column(
                    children:[ Icon(Icons.manage_accounts_rounded,
                      color: Get.isDarkMode?Colors.white:Colors.black,
                      size: 35,),
                      active==5?Container(
                        height: 1,
                        width: 35,
                        color: Get.isDarkMode?Colors.white:Colors.black,
                      ):Container()!
                    ]
                ),
              ),
            )          ],
        ),
      ),
    );
  }
  
  
  void _changeState(int screen){
    setState(() {
      active=screen;
    });
  }
}
