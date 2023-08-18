import 'package:flutter/material.dart';

import 'package:expandable_text/expandable_text.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/Cart.dart';
import 'package:orinova_education_app/Screens/Payment.dart';
import 'package:orinova_education_app/Screens/Profile.dart';
import 'package:orinova_education_app/Screens/Wishlist.dart';
import 'package:orinova_education_app/TextClass.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> with SingleTickerProviderStateMixin{
 late TabController _tabController;
_MyScreenState() {
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
    appBar: AppBar(),
      // appBar: AppBar(actions: [
      //   Container(
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(12),
      //       color: Colors.white,
      //     ),
      //     child: IconButton(
      //       icon: const Icon(
      //         Icons.favorite_border_rounded,
      //         size: 30,
      //       ),
      //       onPressed: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => const WishlistScreen(),
      //             ));
      //       },
      //       color: Colors.redAccent,
      //     ),
      //   ),
      //   const SizedBox(
      //     width: 10,
      //   ),
      //   Container(
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(12),
      //         color: Colors.white,
      //       ),
      //       child: IconButton(
      //         onPressed: () {
      //           Navigator.of(context).push(MaterialPageRoute(
      //             builder: (context) => const ProfileScreen(),
      //           ));
      //         },
      //         icon: const Icon(Icons.person),
      //         iconSize: 30,
      //       )),
      //   const SizedBox(
      //     width: 25,
      //   )
      // ]),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children:[ Center(
                  child: Container(
                    height: 250,
                    color: Color(0x33DBDBDB),
                    child: Image.asset(
                      "assets/images/AI.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                 Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_rounded,
                        size: 30,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Machine Learning and Data Science",
                          style: TextStyle(
                            fontSize: TextClass.customTextSizes['large'],
                            fontWeight: FontWeight.w700,
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text("Stanford University",
                              style: TextStyle(
                                fontSize: TextClass.customTextSizes['medium'],
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.star_rounded,
                            size: 12,
                            color: ColorClass.customColors['BlueGreen'],
                          ),
                          Text(
                            "4.3",
                            style: TextStyle(
                              fontSize: 12,
                              color: ColorClass.customColors['BlueGreen'],
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text("Prof. Mike Morris",
                              style: TextStyle(
                                fontSize:
                                    TextClass.customTextSizes['semi-medium'],
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "(645 Downloads)",
                            style: TextStyle(
                              fontSize: 12,
                              color: const Color.fromARGB(80, 0, 190, 190),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("22 Lectures  (48 hours)",
                          style: TextStyle(
                            fontSize: TextClass.customTextSizes['semi-medium'],
                          )),
                          const SizedBox(
                        height: 5,
                      ),
                      Text("Certificate Course",
                          style: TextStyle(
                            fontSize: TextClass.customTextSizes['semi-medium'],
                          )),
                      const SizedBox(
                        height: 26,
                      ),
                      Text("\$18.09",
                          style: TextStyle(
                            fontSize: TextClass.customTextSizes['large'],
                            fontWeight: FontWeight.w700,
                          )),
                          const SizedBox(height: 8,),
                      Row(
                        children: [
                          Expanded(
                            child: FloatingActionButton(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color:
                                        const Color.fromARGB(80, 0, 190, 190),
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              onPressed: () {},
                              elevation: 0,
                              backgroundColor: Colors.white,
                              child: TextButton(
                                child: const Text(
                                  "Add to cart",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF303841)),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CartScreen(),
                                      ));
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: FloatingActionButton(
                              onPressed: () {},
                              elevation: 0,
                              backgroundColor:
                                  const Color.fromARGB(80, 0, 190, 190),
                              child: TextButton(
                                child: const Text(
                                  "Buy Now",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF303841)),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PaymentScreen(),
                                      ));
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                 

                    ]),
              ),
                 Container(
              color: Colors.white,
              height: 50, // Adjust the height as needed
          // Grey box around the tab bar
              child: TabBar(
                controller: _tabController,
           
                indicatorColor:ColorClass.customColors["BlueGreen"] ,
                labelColor: ColorClass.customColors["BlueGreen"],
                labelStyle: const TextStyle(fontWeight: FontWeight.w700,fontSize: 13),
                tabs:const [
                  Tab(text: 'Key Features',),
                  Tab(text: 'Course Details'),
                  Tab(text: 'Course Content'),
                ],
              ),
            ),
            SizedBox(
              height: 500, // Adjust the height as needed
              child: TabBarView(
                controller: _tabController,
                children: const[
               Padding(padding: EdgeInsets.all(25),
                    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim i')),
                
                 Padding(padding: EdgeInsets.all(25),
                    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim i')),
                  Padding(padding: EdgeInsets.all(25),
                    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim i')),
                ],
              ),
            ),
            const SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}




// SizedBox(
//                       height: 47,
//                       width: 215,
//                       child: FloatingActionButton(
//                         onPressed: () {},
//                         elevation: 0,
//                         backgroundColor: Color.fromARGB(150, 236, 249, 255,),
//                         child: TextButton(
//                           child:const  Text(
//                           "Checkout",
//                           style: TextStyle(
//                               fontSize: 14, fontWeight: FontWeight.w700,color: Color(0xFF303841)),  
//                           ),
//                           onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen(),));
//                     },
                          
//                         ),
//                       ),
//                     ),
    
   
    
   
      // body: SingleChildScrollView(
      //   child: Container(
      //     margin: const EdgeInsets.only(left: 25, right: 25, bottom: 100),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
             
      //         Center(
      //           child: Container(
      //             padding: EdgeInsets.only(top:25,bottom: 25),
      //             height: 250,
                  
      //               color: Color(0x33DBDBDB),
               
      //             alignment: Alignment.center,
      //             child: Image.asset(
      //               "assets/images/AI.jpg",fit: BoxFit.cover,
      //             ),
      //             //(height: mediaQueryData.size.height *0.35,
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 26,
      //         ),
      //         Row(
      //           children: [
      //             const Text(
      //               "Virus Removal",
      //               style: TextStyle(
      //                   fontSize: 22.14,
      //                   fontWeight: FontWeight.w700,
      //                   color: Color(0xFF303841)),
      //             ),
      //             const Spacer(),
      //             Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(12),
      //                 color: Color.fromARGB(150, 236, 249, 255,),
      //               ),
      //               child: IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(
      //                   Icons.trolley,
      //                   color: Color(0xFF303841),
      //                   size: 30,
      //                 ),
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.favorite_border_rounded,
      //                 color: Colors.redAccent,
      //                 size: 30,
      //               ),
      //             )
      //           ],
      //         ),
      //         const Row(
      //           children: [
      //             Text(
      //               "Service Provider",
      //               style: TextStyle(
      //                   fontSize: 17.81,
      //                   fontWeight: FontWeight.w300,
      //                   color: Color(0xFF303841)),
      //             ),
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Icon(
      //               Icons.star_rounded,
      //               size: 15,
      //               color: Color(0xFFFFC23C),
      //             ),
      //             SizedBox(width: 5),
      //             Text("4.3",
      //                 style: TextStyle(
      //                     fontSize: 13,
      //                     color: Color(0xFFFFC23C),
      //                     fontWeight: FontWeight.w700))
      //           ],
      //         ),
      //         const SizedBox(
      //           height: 26,
      //         ),
      //         const Text(
      //           "Description",
      //           style: TextStyle(
      //               fontSize: 17.81,
      //               fontWeight: FontWeight.w600,
      //               color: Color(0xFF303841)),
      //         ),
      //         const ExpandableText(
      //           "Our expert technicians will thoroughly scan your device, identify any viruses or malware, and safely remove them. We will also provide recommendations to prevent future infections.",
      //           expandText: 'Show more',
      //           collapseText: 'Show less',
      //           maxLines: 3,
      //           linkColor: Colors.blue,
      //           style: TextStyle(
      //             fontSize: 15,
      //             fontWeight: FontWeight.w400,
      //             color: Color(0xFF303841),
      //             height: 1.5,
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 26,
      //         ),
      //         const Text(
      //           "Why choose us?",
      //           style: TextStyle(
      //               fontSize: 17.81,
      //               fontWeight: FontWeight.w600,
      //               color: Color(0xFF303841)),
      //         ),
      //         const ExpandableText(
      //           "Our expert technicians will thoroughly scan your device, identify any viruses or malware, and safely remove them. We will also provide recommendations to prevent future infections.",
      //           expandText: 'Show more',
      //           collapseText: 'Show less',
      //           maxLines: 3,
      //           linkColor: Colors.blue,
      //           style: TextStyle(
      //             fontSize: 15,
      //             fontWeight: FontWeight.w400,
      //             color: Color(0xFF303841),
      //             height: 1.5,
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 26,
      //         ),
      //         const Text(
      //           "Rating and Reviews",
      //           style: TextStyle(
      //               fontSize: 17.81,
      //               fontWeight: FontWeight.w600,
      //               color: Color(0xFF303841)),
      //         ),
      //         const Text(
      //           "User 1",
      //           style: TextStyle(
      //             fontSize: 15,
      //             fontWeight: FontWeight.w400,
      //             color: Color(0xFF303841),
      //             height: 1.5,
      //           ),
      //         ),
      //         Container(
      //           decoration: const BoxDecoration(
      //               border: Border(
      //             bottom: BorderSide(
      //                 width: 1.0, color: Color.fromARGB(75, 59, 59, 59)),
      //           )),
      //           child: const Row(
      //             children: [
      //               Text(
      //                 "Fantastic Service!",
      //                 style: TextStyle(
      //                   fontSize: 15,
      //                   fontWeight: FontWeight.w400,
      //                   color: Color(0xFF303841),
      //                   height: 1.5,
      //                 ),
      //               ),
      //               Spacer(),
      //               Icon(
      //                 Icons.star_rounded,
      //                 size: 17,
      //                 color: Color(0xFFFFC23C),
      //               ),
      //               SizedBox(width: 5),
      //               Text("4.3",
      //                   style: TextStyle(
      //                       fontSize: 15,
      //                       color: Color(0xFFFFC23C),
      //                       fontWeight: FontWeight.w700))
      //             ],
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 20,
      //         ),

      //         const Text(
      //           "User 1",
      //           style: TextStyle(
      //             fontSize: 15,
      //             fontWeight: FontWeight.w400,
      //             color: Color(0xFF303841),
      //             height: 1.5,
      //           ),
      //         ),
      //         Container(
      //           decoration: const BoxDecoration(
      //               border: Border(
      //             bottom: BorderSide(
      //                 width: 1.0, color: Color.fromARGB(75, 59, 59, 59)),
      //           )),
      //           child: const Row(
      //             children: [
      //               Text(
      //                 "Fantastic Service!",
      //                 style: TextStyle(
      //                   fontSize: 15,
      //                   fontWeight: FontWeight.w400,
      //                   color: Color(0xFF303841),
      //                   height: 1.5,
      //                 ),
      //               ),
      //               Spacer(),
      //               Icon(
      //                 Icons.star_rounded,
      //                 size: 17,
      //                 color: Color(0xFFFFC23C),
      //               ),
      //               SizedBox(width: 5),
      //               Text("4.3",
      //                   style: TextStyle(
      //                       fontSize: 15,
      //                       color: Color(0xFFFFC23C),
      //                       fontWeight: FontWeight.w700))
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
   



// SizedBox(
//                       height: 47,
//                       width: 215,
//                       child: FloatingActionButton(
//                         onPressed: () {},
//                         elevation: 0,
//                         backgroundColor: Color.fromARGB(150, 236, 249, 255,),
//                         child: TextButton(
//                           child:const  Text(
//                           "Checkout",
//                           style: TextStyle(
//                               fontSize: 14, fontWeight: FontWeight.w700,color: Color(0xFF303841)),  
//                           ),
//                           onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen(),));
//                     },
                          
//                         ),
//                       ),
//                     ),