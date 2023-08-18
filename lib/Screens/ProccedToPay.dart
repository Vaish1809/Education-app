import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/TextClass.dart';

class ProceedtoPay extends StatefulWidget {
  const ProceedtoPay({super.key});

  @override
  State<ProceedtoPay> createState() => _ProceedtoPayState();
}

class _ProceedtoPayState extends State<ProceedtoPay> {
  @override
//    late TabController _tabController;
// _MyScreenState() {
//     _tabController = TabController(length: 3, vsync: this);
//   }
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(child: Text("Proceed to PayS"),)
      // SingleChildScrollView(
      //  child: Padding(
      //    padding: const EdgeInsets.only(top: 25,bottom: 25,),
      //    child: Column(
      //      children: [
      //       Container(
      //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),     color: Colors.white),
      //         height: 50, // Adjust the height as needed
      //     // Grey box around the tab bar
      //         child: TabBar(
      //           controller: _tabController,
           
      //           indicatorColor:ColorClass.customColors["BlueGreen"] ,
      //           labelColor: ColorClass.customColors["BlueGreen"],
      //           labelStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 13),
      //           tabs: [
      //             Tab(text: 'Key Features',),
      //             Tab(text: 'Course Details'),
      //             Tab(text: 'Course Content'),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         height: 500, // Adjust the height as needed
      //         child: TabBarView(
      //           controller: _tabController,
      //           children: [
      //             Padding(padding: EdgeInsets.only(top: 25),
      //               child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim i')),
      //            Padding(padding: EdgeInsets.only(top: 25),
      //               child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim i')),
      //             Padding(padding: EdgeInsets.only(top: 25),
      //               child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim i')),
      //           ],
      //         ),
      //       ),
      //     ],
      //    )
        
      //    ),
            
      //   ),
    
    );
  }
}
      //    child: DefaultTabController(
      //     length: 3, // Number of tabs
      //     child: Column(
      //       children: <Widget>[
      //         ButtonsTabBar(
      //          contentPadding: EdgeInsets.all(10),
      //           backgroundColor: Colors.red,
      //           unselectedBackgroundColor: Colors.grey[300],
      //           unselectedLabelStyle: TextStyle(color: Colors.black),
      //           labelStyle: TextStyle(
      //             color: Colors.white,
      //             fontSize: TextClass.customTextSizes["semi-medium"],
      //             fontWeight: FontWeight.bold,
      //           ),
      //           tabs: const [
      //             Tab( text: "Key Features"),
      //             Tab( text: "About the Course"),
      //             Tab(text: "Course Content",),
                
      //           ],
      //         ),
      //         Expanded(
      //           child: TabBarView(
              
      //             children: <Widget>[
      //   //             Container(
      //   // constraints: BoxConstraints.expand(width: double.infinity),
      //   // decoration: BoxDecoration(
      //   //   color: Colors.grey,
      //   //   borderRadius: BorderRadius.circular(10),
      //   // ),
      //   // padding: EdgeInsets.all(15),
      //   // child: Text("Your content here"),
      // //     ),
      //   //            ListView(
      //   //   padding:const  EdgeInsets.all(15),
      //   //   children: [
      //   // //  Container(
      //   // //       padding: const EdgeInsets.all(10),
      //   // //       decoration: BoxDecoration(
      //   // //         color: Colors.grey[300],
      //   // //         borderRadius: BorderRadius.circular(10),
      //   // //       ),
      //   // //       child:const Text("Understand ML algorithms\n\nData Science Projects\n\nUnderstand ML algorithms\n\nData Science Projects"),
      //   // //     ),
      //   //   ],
      //   // ),
                   
      //   //              ListView(
      //   //   padding: const EdgeInsets.all(15),
      //   //   children: [
      //   //  Container(
      //   //       padding: const EdgeInsets.all(10),
      //   //       decoration: BoxDecoration(
      //   //         color: Colors.grey[300],
      //   //         borderRadius: BorderRadius.circular(10),
      //   //       ),
      //   //       child:const Text("Understand ML algorithms\n\nData Science Projects\n\nUnderstand ML algorithms\n\nData Science Projects"),
      //   //     ),
      //   //   ],
      //   // ),
      //   // ListView(
      //   //   padding:const EdgeInsets.all(15),
      //   //   children: [
      //   //  Container(
      //   //       padding: const EdgeInsets.all(10),
      //   //       decoration: BoxDecoration(
      //   //         color: Colors.grey[300],
      //   //         borderRadius: BorderRadius.circular(10),
      //   //       ),
      //   //       child:const  Text("Understand ML algorithms\n\nData Science Projects\n\nUnderstand ML algorithms\n\nData Science Projects"),
      //   //     ),
      //   //   ],
      //   // ),
      //   //          Container(
      //   // constraints: BoxConstraints.expand(width: double.infinity),
      //   // decoration: BoxDecoration(
      //   //   color: Colors.grey,
      //   //   borderRadius: BorderRadius.circular(10),
      //   // ),
      //   // padding: EdgeInsets.all(15),
      //   // child: Text("Your content here"),
      //   // ),
      //   // Container(
      //   // constraints: BoxConstraints.expand(width: double.infinity),
      //   // decoration: BoxDecoration(
      //   //   color: Colors.grey,
      //   //   borderRadius: BorderRadius.circular(10),
      //   // ),
      //   // padding: EdgeInsets.all(15),
      //   // child: Text("Your content here"),
      //   // ),
                  
      //             Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
      //               Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
      //                 Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //      ),
   