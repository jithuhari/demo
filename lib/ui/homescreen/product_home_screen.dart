import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../../resources/drawables.dart';
import '../../util/app_appbar.dart';
import '../../util/app_decorations.dart';
import '../../util/widget_utils.dart';
import '../earnings/earning_list.dart';
import '../login/settings_screen.dart';
import '../orders/orders_list_screen.dart';
import '../product/product_list_screen.dart';



class BottomNavScreenProduct extends StatefulWidget {
  const BottomNavScreenProduct({super.key});

  @override
  State<BottomNavScreenProduct> createState() => _BottomNavScreenProductState();
}

class _BottomNavScreenProductState extends State<BottomNavScreenProduct> {
 int _selectedIndex = 0;

 final screens=[
   OrdersListScreen(),
   ProductListScreen(),
   const SettingsScreen(),
   const  EarningList()

 ];
 
  @override
  Widget build(BuildContext context) {

    int index;
    return Scaffold(
      appBar: CustomAppBar(
            autoLeading: false,
            leadingWidget: WidgetUtils.widgets(
                child: Container(
              margin: const EdgeInsets.all(12),
              height: 40,
              width: 40,
              decoration: AppDecoration.decorationCircle(color: Colors.red),
              clipBehavior: Clip.antiAlias,
              alignment: Alignment.center,
              child: Image.asset(
                Drawables.avatar,
                fit: BoxFit.contain,
              ),
            )),
            actionWidget: WidgetUtils.widgets(
                child: Padding(
              padding: const EdgeInsets.all(18),
              child: Image.asset(
                Drawables.bellIcon,
                height: 27,
                width: 23.5,
              ),
            ))),
      body:screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        
        type:BottomNavigationBarType.fixed ,
        backgroundColor: Colors.white,
        
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,

        items:   [
        
            BottomNavigationBarItem(
            icon:SvgPicture.asset("assets/svg/Notepad.svg"),
            label: "orders",
            activeIcon:SvgPicture.asset("assets/svg/NotepadAct.svg"),
            
         
         
          ),
          BottomNavigationBarItem(
            icon:SvgPicture.asset("assets/svg/Package.svg"),
            label: "product",
            activeIcon:SvgPicture.asset("assets/svg/PackageAct.svg"),),

              BottomNavigationBarItem(
            icon:SvgPicture.asset("assets/svg/Gear.svg"),
            label: "settings",
            activeIcon:SvgPicture.asset("assets/svg/GearAct.svg"), ),

            BottomNavigationBarItem(
            icon:SvgPicture.asset("assets/svg/Coins.svg"),
            label: "Earnings",
            activeIcon:SvgPicture.asset("assets/svg/CoinsAct.svg"),)
            ,],

             onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },

    ));
  }
}