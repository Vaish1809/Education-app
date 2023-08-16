import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
//enum _SelectedTab { home, favorite, search, person }
import 'package:icons_plus/icons_plus.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/Cart.dart';
import 'package:orinova_education_app/Screens/MainHomePage.dart';
import 'package:orinova_education_app/Screens/Search.dart';
import 'package:orinova_education_app/Screens/myCourses.dart';
class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _index = 0;


  final screens = [
 MainHomePage(),
 SearchScreen(),
 MyCourses(),
 CartScreen(),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[_index],
     
bottomNavigationBar: Container(
  height: 80,
 padding: EdgeInsets.only(left: 25,right:25 ),
      color: Colors.white,
        child: SafeArea(
         
            child: GNav(
          
              rippleColor: Colors.white,
              hoverColor: Colors.white,
              gap: 1,
              activeColor: Color.fromARGB(80,0 , 190, 190),
              iconSize: 30,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Color.fromARGB(10, 31, 171, 137),

             
               color:  Color.fromARGB(40, 31, 171, 137),
              tabs: [
                GButton(
                  icon:Icons.home_rounded ,
            text: 'Home',
                ),
                GButton(
                  icon: Icons.search,
             text: 'Search',
                ),
                GButton(
                  icon: Icons.my_library_books_rounded,
                 text: 'My Courses',
                ),
                GButton(
                  icon: Icons.shopping_cart,
              text: 'Cart',
                ),
                
              ],
              selectedIndex: _index,
              onTabChange: (index) {
                setState(() {
                  _index = index;
                });
              },
            ),
          //),
        ),
      ),
    );
  }
}