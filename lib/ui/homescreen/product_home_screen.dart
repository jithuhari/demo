import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

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