import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
//enum _SelectedTab { home, favorite, search, person }
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
 const MainHomePage(),
 const SearchScreen(),
 const MyCourses(),
 const CartScreen(),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[_index],
     
bottomNavigationBar: Container(
  height: 80,
 padding: const EdgeInsets.only(left: 25,right:25 ),
      color: Colors.white,
        child: SafeArea(
         
            child: GNav(
          
              rippleColor: Colors.white,
              hoverColor: Colors.white,
              gap: 1,
              activeColor: const Color.fromARGB(80,0 , 190, 190),
              iconSize: 30,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: const Color.fromARGB(10, 31, 171, 137),

             
               color:  const Color.fromARGB(40, 31, 171, 137),
              tabs: const [
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