import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/Profile.dart';
import 'package:orinova_education_app/Screens/Wishlist.dart';
import 'package:orinova_education_app/TextClass.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
  
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: ColorClass.customColors['BlueGreen'],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                height: 274,
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/logoshort.png",
                            height: 50,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Good Morning",
                                style: TextStyle(
                                    fontSize: TextClass.customTextSizes['meduim'],
                                    color: Colors.white),
                              ),
                              Text(
                                "Kaylie",
                                style: TextStyle(
                                    fontSize: TextClass.customTextSizes['large'],
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                            icon: Icon(
                              Icons.favorite_border_rounded,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WishlistScreen(),
                                  ));
                            },
                            color: Colors.redAccent,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProfileScreen(),
                              ));
                            },
                            icon: const Icon(Icons.notifications_none_rounded),
                            iconSize: 30,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      if (screenSize.width >= 500)
                        Text(
                          "What would you like to learn?",
                          style: TextStyle(
                              fontSize: 33,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      else
                        const SizedBox(
                          width: 300,
                          child: Text(
                            "What would you like to learn?",
                            style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}
//       body: SafeArea(
//         child: 
//         CustomScrollView(
//           slivers: <Widget>[
//             SliverAppBar.large(shape: RoundedRectangleBorder(
//   borderRadius: BorderRadius.only(
//     bottomLeft: Radius.circular(30),
//     bottomRight: Radius.circular(30),
//   ),
// ),pinned: true,
//               backgroundColor: ColorClass.customColors['BlueGreen'],
//               expandedHeight: 274,
//               flexibleSpace: Container(
//                 margin: EdgeInsets.all(25),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           "assets/images/logoshort.png",
//                           height: 50,
//                         ),
//                         const SizedBox(
//                           width: 10,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               "Good Morning",
//                               style: TextStyle(
//                                   fontSize: TextClass.customTextSizes['meduim'],
//                                   color: Colors.white),
//                             ),
//                             Text(
//                               "Kaylie",
//                               style: TextStyle(
//                                   fontSize: TextClass.customTextSizes['large'],
//                                   fontWeight: FontWeight.w700,
//                                   color: Colors.white),
//                             )
//                           ],
//                         ),
//                         const Spacer(),
//                         IconButton(
//                           icon: Icon(
//                             Icons.favorite_border_rounded,
//                             size: 30,
//                           ),
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => WishlistScreen(),
//                                 ));
//                           },
//                           color: Colors.redAccent,
//                         ),
//                         IconButton(
//                           onPressed: () {
//                             Navigator.of(context).push(MaterialPageRoute(
//                               builder: (context) => ProfileScreen(),
//                             ));
//                           },
//                           icon: const Icon(Icons.notifications_none_rounded),
//                           iconSize: 30,
//                         )
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 40,
//                     ),
//                     if (screenSize.width >= 500)
//                       Text(
//                         "What would you like to learn?",
//                         style: TextStyle(
//                             fontSize: 33,
//                             fontWeight: FontWeight.w700,
//                             color: Colors.white),
//                       )
//                     else
//                       const SizedBox(
//                         width: 300,
//                         child: Text(
//                           "What would you like to learn?",
//                           style: TextStyle(
//                               fontSize: 33,
//                               fontWeight: FontWeight.w700,
//                               color: Colors.white),
//                         ),
//                       )
//                   ],
//                 ),
//               ),
//             ),
//             SliverToBoxAdapter(
//               child: Card(
//                 child: SizedBox(
//                   height: 1200,
//                   child: Padding(
//                     padding: const EdgeInsets.fromLTRB(8, 100, 8, 100),
//                     child: Text(
//                       'Here be scrolling content...',
                    
//                     )
//                   )
//                 )
//               )
//             )
//           ],
        
//         ),
//       ),
//     );
//   }
// }
