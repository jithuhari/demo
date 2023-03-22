
import 'package:flutter/material.dart';

import '../../resources/drawables.dart';
import '../custom_sized_boxes.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 2 / 3,
        child: Drawer(
          backgroundColor: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: Column(children:[
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children:const  [Padding(
                        padding:  EdgeInsets.only(right: 10,top: 10),
                        child: Icon(Icons.close,size: 30,),
                      )],),
                   const  SizedBox(
                      height: 80,
                    ),
                  const   CircleAvatar(
                      backgroundImage: AssetImage(Drawables.drawerProfile),
                      radius: 60,
                      backgroundColor: Colors.white,
                      
               
                    ),
                   
                  ]),
                ),
              const   SizedBoxH40(),
                ListTileWidgets(
                  text: "Orders",
                  myImage: Image.asset(Drawables.dwOrder),
                  ontap: () {},
                ),
                ListTileWidgets(
                  text: "Product",
                  myImage: Image.asset(Drawables.dwproduct),
                  ontap: () {},
                ),
                ListTileWidgets(
                  text: "Settlements",
                  myImage: Image.asset(Drawables.dwbank),
                  ontap: () {},
                ),
                ListTileWidgets(
                  text: "Settings",
                  myImage: Image.asset(Drawables.dwsetting),
                  ontap: () {},
                ),
                ListTileWidgets(
                  text: "Logout",
                  myImage: Image.asset(Drawables.dwsignout),
                  ontap: () {},
                ),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListTileWidgets extends StatelessWidget {
  const ListTileWidgets(
      {required this.text,
      Key? key,
      required this.myImage,
      required this.ontap})
      : super(key: key);
  final String text;
  final Image myImage;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding:  const EdgeInsets.only(left: 20, right: 10, top: 15, bottom: 15),
        child: Row(
          children: [
            SizedBox(
              height: 24,
              width: 30,
              child: myImage,
            ),
           const  SizedBox(
              width: 10,
            ),
            Text(text)
          ],
        ),
      ),
      onTap: ontap,
    );
  }
} 

  