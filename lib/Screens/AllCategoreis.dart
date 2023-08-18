import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/SelectedCategoried.dart';
import 'package:orinova_education_app/Screens/SelectedUniversity.dart';
import 'package:orinova_education_app/TextClass.dart';
import 'package:orinova_education_app/Widgets/popularCategoryitem.dart';

class AllCategories extends StatefulWidget {
  const AllCategories({super.key});

  @override
  State<AllCategories> createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                        padding: const EdgeInsets.all(25),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorClass.customColors['BlueGreen'],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        height: 200,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back_rounded,
                                  size: 30,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Find a course",
                                    style: TextStyle(
                                      fontSize:
                                          TextClass.customTextSizes['appBar'],
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Spacer(),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: TextField(
                                        style: const TextStyle(
                                            fontSize: 16,
                                            color: Color(0xFF303841)),
                                        controller: controller,
                                        decoration: InputDecoration(
                                          hintText: "Search ",
                                          border: InputBorder.none,
                                          labelStyle: const TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF303841)),
                                          prefixIcon: const Icon(Icons.search,
                                              color: Color(0xFF303841)),
                                          suffixIcon: IconButton(
                                            icon: const Icon(Icons.clear),
                                            onPressed: () {
                                              controller.clear();
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
               Padding(
                        padding: const EdgeInsets.only(top: 25,right: 25,left: 25),
                        child: Text(
                          "Popular Categories",
                          style: TextStyle(
                              fontSize: TextClass.customTextSizes["large"],
                              fontWeight: FontWeight.w700),
                        ),
                      ),
              Padding(
                padding: EdgeInsets.all(25),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PopularCategoryItem(
                        title: "Artificial Intelligence",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedCategoriesScreen(),
                            ),
                          );
                        },
                      ),
                    
                      PopularCategoryItem(
                        title: "Artificial Intelligence",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedCategoriesScreen(),
                            ),
                          );
                        },
                      ),
                  
                      PopularCategoryItem(
                        title: "Artificial Intelligence",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedCategoriesScreen(),
                            ),
                          );
                        },
                      ),
                      PopularCategoryItem(
                        title: "Artificial Intelligence",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedCategoriesScreen(),
                            ),
                          );
                        },
                      ),
                  
                      PopularCategoryItem(
                        title: "Artificial Intelligence",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedCategoriesScreen(),
                            ),
                          );
                        },
                      ),
                      PopularCategoryItem(
                        title: "Artificial Intelligence",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedCategoriesScreen(),
                            ),
                          );
                        },
                      ),
                  
                      PopularCategoryItem(
                        title: "Artificial Intelligence",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedCategoriesScreen(),
                            ),
                          );
                        },
                      ),
                      // Repeat the above pattern for other categories...
                    ],
                  ),
                ),
              ),
               Padding(
                        padding: const EdgeInsets.only(top: 25,right: 25,left: 25),
                        child: Text(
                          "Popular Universities",
                          style: TextStyle(
                              fontSize: TextClass.customTextSizes["large"],
                              fontWeight: FontWeight.w700),
                        ),
                      ),
              Padding(
                padding: EdgeInsets.all(25),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PopularCategoryItem(
                        title: "Harvard University",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedUniversityScreen(),
                            ),
                          );
                        },
                      ),
                    
                      PopularCategoryItem(
                        title: "Stanford University",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedUniversityScreen(),
                            ),
                          );
                        },
                      ),
                  
                      PopularCategoryItem(
                        title: "Harvard University",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedUniversityScreen(),
                            ),
                          );
                        },
                      ),
                       PopularCategoryItem(
                        title: "Stanford University",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedUniversityScreen(),
                            ),
                          );
                        },
                      ),
                  
                      PopularCategoryItem(
                        title: "Harvard University",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedUniversityScreen(),
                            ),
                          );
                        },
                      ),
                       PopularCategoryItem(
                        title: "Stanford University",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedUniversityScreen(),
                            ),
                          );
                        },
                      ),
                  
                      PopularCategoryItem(
                        title: "Harvard University",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedUniversityScreen(),
                            ),
                          );
                        },
                      ),
                      // Repeat the above pattern for other categories...
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


// class AllCategories extends StatefulWidget {
//   const AllCategories({super.key});

//   @override
//   State<AllCategories> createState() => _AllCategoriesState();
// }

// class _AllCategoriesState extends State<AllCategories> {
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController controller = TextEditingController();
//     return Scaffold(
//         backgroundColor: const Color.fromARGB(255, 246, 246, 246),
//         body: SafeArea(
//             child: SingleChildScrollView(
//                 scrollDirection: Axis.vertical,
//                 child: Column(
//                     //mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.all(25),
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           color: ColorClass.customColors['BlueGreen'],
//                           borderRadius: const BorderRadius.only(
//                             bottomLeft: Radius.circular(20),
//                             bottomRight: Radius.circular(20),
//                           ),
//                         ),
//                         height: 200,
//                         child: Stack(
//                           children: [
//                             Align(
//                               alignment: Alignment.topLeft,
//                               child: IconButton(
//                                 onPressed: () {
//                                   Navigator.pop(context);
//                                 },
//                                 icon: const Icon(
//                                   Icons.arrow_back_rounded,
//                                   size: 30,
//                                 ),
//                               ),
//                             ),
//                             Align(
//                               alignment: Alignment.center,
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   const SizedBox(
//                                     height: 5,
//                                   ),
//                                   Text(
//                                     "Find a course",
//                                     style: TextStyle(
//                                       fontSize:
//                                           TextClass.customTextSizes['appBar'],
//                                       fontWeight: FontWeight.w700,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                   Spacer(),
//                                   Align(
//                                     alignment: Alignment.bottomCenter,
//                                     child: Container(
//                                       width: double.infinity,
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(16),
//                                       ),
//                                       child: TextField(
//                                         style: const TextStyle(
//                                             fontSize: 16,
//                                             color: Color(0xFF303841)),
//                                         controller: controller,
//                                         decoration: InputDecoration(
//                                           hintText: "Search ",
//                                           border: InputBorder.none,
//                                           labelStyle: const TextStyle(
//                                               fontSize: 16,
//                                               color: Color(0xFF303841)),
//                                           prefixIcon: const Icon(Icons.search,
//                                               color: Color(0xFF303841)),
//                                           suffixIcon: IconButton(
//                                             icon: const Icon(Icons.clear),
//                                             onPressed: () {
//                                               controller.clear();
//                                             },
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(25),
//                         child: Text(
//                           "Popular Categories",
//                           style: TextStyle(
//                               fontSize: TextClass.customTextSizes["large"],
//                               fontWeight: FontWeight.w700),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(25),
//                         child: Expanded(
//                           child: Container(
//                               width: double.infinity,
//                               padding: EdgeInsets.all(15),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(17),
//                                   color: Colors.white),
//                               child: Column(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Row(children: [
//                                     SizedBox(
//                                       height: 30,
//                                       width: 30,
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(8),
//                                         child: Image.asset(
//                                             "assets/images/AI.jpg",
//                                             fit: BoxFit.cover),
//                                       ),
//                                     ),
//                                     TextButton(
//                                       child: Text(
//                                         "Artificial Intelligence",
//                                         style: TextStyle(
//                                             color: ColorClass
//                                                 .customColors["Black"],
//                                             fontSize: TextClass
//                                                 .customTextSizes['medium'],
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                       onPressed: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                               builder: (context) =>
//                                                   SelectedCategoriesScreen(),
//                                             ));
//                                       },
//                                     ),
//                                   ]),
//                                   Row(children: [
//                                     SizedBox(
//                                       height: 30,
//                                       width: 30,
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(8),
//                                         child: Image.asset(
//                                             "assets/images/AI.jpg",
//                                             fit: BoxFit.cover),
//                                       ),
//                                     ),
//                                     TextButton(
//                                       child: Text(
//                                         "Artificial Intelligence",
//                                         style: TextStyle(
//                                             color: ColorClass
//                                                 .customColors["Black"],
//                                             fontSize: TextClass
//                                                 .customTextSizes['medium'],
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                       onPressed: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                               builder: (context) =>
//                                                   SelectedCategoriesScreen(),
//                                             ));
//                                       },
//                                     ),
//                                   ]),
//                                   Row(children: [
//                                     SizedBox(
//                                       height: 30,
//                                       width: 30,
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(8),
//                                         child: Image.asset(
//                                             "assets/images/AI.jpg",
//                                             fit: BoxFit.cover),
//                                       ),
//                                     ),
//                                     TextButton(
//                                       child: Text(
//                                         "Artificial Intelligence",
//                                         style: TextStyle(
//                                             color: ColorClass
//                                                 .customColors["Black"],
//                                             fontSize: TextClass
//                                                 .customTextSizes['medium'],
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                       onPressed: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                               builder: (context) =>
//                                                   SelectedCategoriesScreen(),
//                                             ));
//                                       },
//                                     ),
//                                   ]),
//                                   Row(children: [
//                                     SizedBox(
//                                       height: 30,
//                                       width: 30,
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(8),
//                                         child: Image.asset(
//                                             "assets/images/AI.jpg",
//                                             fit: BoxFit.cover),
//                                       ),
//                                     ),
//                                     TextButton(
//                                       child: Text(
//                                         "Artificial Intelligence",
//                                         style: TextStyle(
//                                             color: ColorClass
//                                                 .customColors["Black"],
//                                             fontSize: TextClass
//                                                 .customTextSizes['medium'],
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                       onPressed: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                               builder: (context) =>
//                                                   SelectedCategoriesScreen(),
//                                             ));
//                                       },
//                                     ),
//                                   ]),
//                                   Row(children: [
//                                     SizedBox(
//                                       height: 30,
//                                       width: 30,
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(8),
//                                         child: Image.asset(
//                                             "assets/images/AI.jpg",
//                                             fit: BoxFit.cover),
//                                       ),
//                                     ),
//                                     TextButton(
//                                       child: Text(
//                                         "Artificial Intelligence",
//                                         style: TextStyle(
//                                             color: ColorClass
//                                                 .customColors["Black"],
//                                             fontSize: TextClass
//                                                 .customTextSizes['medium'],
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                       onPressed: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                               builder: (context) =>
//                                                   SelectedCategoriesScreen(),
//                                             ));
//                                       },
//                                     ),
//                                   ]),
//                                 ],
//                               )),
//                         ),
//                       )
//                     ]))));
//   }
// }
                          
                      
//                                     // child: Container(
//                                     //     width: double.infinity,
//                                     //     height: 140,
//                                     //     decoration: BoxDecoration(
//                                     //       color: Colors.white,
//                                     //       borderRadius:
//                                     //           BorderRadius.circular(22),
//                                     //     ),
//                                     //     alignment: Alignment.center,
//                                     //     child: Row(
//                                     //       mainAxisAlignment: MainAxisAlignment.center,
//                                     //       crossAxisAlignment: CrossAxisAlignment.center,
//                                     //       children: [
//                                     //         Column(
//                                     //           mainAxisAlignment: MainAxisAlignment.center,
//                                     //       crossAxisAlignment: CrossAxisAlignment.center,  
//                                     //           children: [
//                                     //             Text("Aashi",
//                                     //                 style: TextStyle(
//                                     //                   fontSize: TextClass
//                                     //                           .customTextSizes[
//                                     //                       'large'],
//                                     //                   fontWeight:
//                                     //                       FontWeight.w700,
//                                     //                 )),
//                                     //             Text("aashi@gmail.com",
//                                     //                 style: TextStyle(
//                                     //                   fontSize: TextClass
//                                     //                           .customTextSizes[
//                                     //                       'medium'],
                                                     
//                                     //                 )),
                                                    
//                                     //           ],
//                                     //         ),
//                                     //         const SizedBox(width: 40,),
//                                     //         Container(
//                                     //           width: 110,
//                                     //           height: 110,
//                                     //           decoration: const BoxDecoration(
//                                     //             shape: BoxShape.circle,
//                                     //           ),
//                                     //           child: ClipOval(
//                                     //               child: Image.asset(
//                                     //             "assets/images/AI.jpg",
//                                     //             fit: BoxFit.cover,
//                                     //           )),
//                                     //         )
//                                     //       ],
//                                     //     )),
       
                          
// //         body: SafeArea(
// //             child: SingleChildScrollView(
// //                 scrollDirection: Axis.vertical,
// //                 child: Column(children: [
// //                   Container(
// //                     decoration: BoxDecoration(
// //                         color: ColorClass.customColors['BlueGreen'],
// //                         borderRadius: const BorderRadius.only(
// //                           bottomLeft: Radius.circular(20),
// //                           bottomRight: Radius.circular(20),
// //                         )),
// //                     height: 200,


// // child: Stack(
// //                     children: [
// //                       Align(
// //                         alignment: Alignment.centerLeft,
// //                         child: Padding(
// //                           padding: const EdgeInsets.only(left: 25),
// //                           child: IconButton(
// //                             onPressed: () {
// //                               Navigator.pop(context);
// //                             },
// //                             icon: const Icon(
// //                               Icons.arrow_back_rounded,
// //                               size: 30,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                       Align(
// //                         alignment: Alignment.center,
// //                         child: Column(
// //                           children: [
// //                             Text(
// //                               "Checkout",
// //                               style: TextStyle(
// //                                 fontSize: TextClass.customTextSizes['appBar'],
// //                                 fontWeight: FontWeight.w700,
// //                                 color: Colors.white,
// //                               ),
// //                             ),

// //                           Container(
// //                             width: double.infinity,
// //                             decoration: BoxDecoration(
// //                               color: Colors.white,
// //                               borderRadius: BorderRadius.circular(16),
// //                             ),
// //                             child: TextField(
// //                               style: const TextStyle(
// //                                   fontSize: 16, color: Color(0xFF303841)),
// //                               controller: controller,
// //                               decoration: InputDecoration(
// //                                 hintText: "Search ",
// //                                 border: InputBorder.none,
// //                                 labelStyle: const TextStyle(
// //                                     fontSize: 16, color: Color(0xFF303841)),
// //                                 prefixIcon: const Icon(Icons.search,
// //                                     color: Color(0xFF303841)),
// //                                 suffixIcon: IconButton(
// //                                   icon: const Icon(Icons.clear),
// //                                   onPressed: () {
// //                                     controller.clear();
// //                                   },
// //                                 ),
// //                               ),
// //                             ),
// //                           ),
// //                           ],
// //                         ),
// //                       ),
                            
                       
// //                     ],
// //                   ),

//                     // child: Padding(
//                     //   padding: const EdgeInsets.all(25),
//                     //   child: Column(
//                     //     //   crossAxisAlignment: CrossAxisAlignment.start,
//                     //     children: [
//                     //       const SizedBox(
//                     //         height: 20,
//                     //       ),
//                     //       Text("Categories",
//                     //           style: TextStyle(
//                     //             fontSize: TextClass.customTextSizes['appBar'],
//                     //             fontWeight: FontWeight.w700,
//                     //             color: Colors.white,
//                     //           )),
//                     //       const Spacer(),
//                     //       Container(
//                     //         width: double.infinity,
//                     //         decoration: BoxDecoration(
//                     //           color: Colors.white,
//                     //           borderRadius: BorderRadius.circular(16),
//                     //         ),
//                     //         child: TextField(
//                     //           style: const TextStyle(
//                     //               fontSize: 16, color: Color(0xFF303841)),
//                     //           controller: controller,
//                     //           decoration: InputDecoration(
//                     //             hintText: "Search ",
//                     //             border: InputBorder.none,
//                     //             labelStyle: const TextStyle(
//                     //                 fontSize: 16, color: Color(0xFF303841)),
//                     //             prefixIcon: const Icon(Icons.search,
//                     //                 color: Color(0xFF303841)),
//                     //             suffixIcon: IconButton(
//                     //               icon: const Icon(Icons.clear),
//                     //               onPressed: () {
//                     //                 controller.clear();
//                     //               },
//                     //             ),
//                     //           ),
//                     //         ),
//                     //       ),
//                     //     ],
//                     //   ),
//                     // ),
// //                   ),
// //                 ]
// //                 )
// //             )
// //         )
// //         );
  
// //   }
// // }