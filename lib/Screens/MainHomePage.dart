import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/AllCategoreis.dart';
import 'package:orinova_education_app/Screens/Profile.dart';
import 'package:orinova_education_app/Screens/SelectedUniversity.dart';
import 'package:orinova_education_app/Screens/Wishlist.dart';
import 'package:orinova_education_app/Screens/popularCourses.dart';
import 'package:orinova_education_app/TextClass.dart';
import 'package:orinova_education_app/Widgets/customCard.dart';
import 'package:orinova_education_app/Widgets/popularCategory.dart';

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
      backgroundColor: const Color.fromARGB(80, 225, 230, 230),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: ColorClass.customColors['BlueGreen'],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                height: 274,
                child: Padding(
                  padding: const EdgeInsets.all(25),
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
                                    fontSize:
                                        TextClass.customTextSizes['meduim'],
                                    color: Colors.white),
                              ),
                              Text(
                                "Kaylie",
                                style: TextStyle(
                                    fontSize:
                                        TextClass.customTextSizes['large'],
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          const Spacer(),
                          Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child:
                          IconButton(
                            icon: const Icon(
                              Icons.favorite_border_rounded,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const WishlistScreen(),
                                  ));
                            },
                            color: Colors.redAccent,
                          ),),
                 const SizedBox(width: 10,),         
 Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color:Colors.white,
      ),
      child:
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ProfileScreen(),
                              ));
                            },
                           
                            icon: const Icon(Icons.person),
                            iconSize: 30,
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      if (screenSize.width >= 500)
                        const Text(
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
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Text(
                      "Popular Courses",
                      style: TextStyle(
                          fontSize: TextClass.customTextSizes["large"],
                          fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => PopularCourses(),));},
                      child: Text(
  "See All",
                      style: TextStyle(
                          color: ColorClass.customColors['BlueGreen'],
                          fontSize: TextClass.customTextSizes["seemore"],
                          fontWeight: FontWeight.w700),
                      ),
                    
                    )
                  ],
                ),
              ),
         
            

      Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const CustomCard(
                    imagePath: "assets/images/AI.jpg",
                    title: "Machine Learning and Data Science",
                    university: "Stanford University",
                    rating: "4.3",
                  );
                },
              ),
            ),
          ),


              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Text(
                      "Popular Categories",
                      style: TextStyle(
                          fontSize: TextClass.customTextSizes["large"],
                          fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AllCategories(),));},
                      child: Text(
  "See All",
                      style: TextStyle(
                          color: ColorClass.customColors['BlueGreen'],
                          fontSize: TextClass.customTextSizes["seemore"],
                          fontWeight: FontWeight.w700),
                      ),
                    
                    )
                  ],
                ),
              ),

Container(
  padding: const EdgeInsets.only(left: 25, right: 25),
  child: Wrap(
    spacing: screenSize.width >= 500 ? 15 : 10, // Adjust spacing based on available width
    runSpacing: screenSize.width >= 500 ? 15 : 10, // Adjust spacing based on available width
    children: const [
      CustomContainerSet(
        imageAsset: "assets/images/AI.jpg",
        labelText: "Machine Learning",
      ),
      CustomContainerSet(
        imageAsset: "assets/images/AI.jpg",
        labelText: "HTML",
      ),
      CustomContainerSet(
        imageAsset: "assets/images/AI.jpg",
        labelText: "CSS",
      ),
      CustomContainerSet(
        imageAsset: "assets/images/AI.jpg",
        labelText: "Machine Learning",
      ),
      CustomContainerSet(
        imageAsset: "assets/images/AI.jpg",
        labelText: "HTML",
      ),
      CustomContainerSet(
        imageAsset: "assets/images/AI.jpg",
        labelText: "CSS",
      ),
    ],
  ),
),


Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Text(
                      "Courses from Harvard",
                      style: TextStyle(
                          fontSize: TextClass.customTextSizes["large"],
                          fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedUniversityScreen(),));},
                      child: Text(
  "See All",
                      style: TextStyle(
                          color: ColorClass.customColors['BlueGreen'],
                          fontSize: TextClass.customTextSizes["seemore"],
                          fontWeight: FontWeight.w700),
                      ),
                    
                    )
                  ],
                ),
              ),
       Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const CustomCard(
                    imagePath: "assets/images/AI.jpg",
                    title: "Machine Learning and Data Science",
                    university: "Stanford University",
                    rating: "4.3",
                  );
                },
              ),
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



              // Padding(
              //     padding: const EdgeInsets.only(left: 25, right: 25),
              //     child: Wrap(
              //       spacing: 15, // Adjust the spacing between containers
              //       children: [
              //         Container(
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(8),
              //             color: Colors.white,
              //           ),
              //           height: 50,
              //           padding: EdgeInsets.all(12),
              //           child: Row(
              //             children: [
              //               Container(
              //                 height: 26,
              //                 width: 26, // Set the desired height for the image
              //                 child: ClipRRect(
              //                   borderRadius: BorderRadius.circular(5),
              //                   child: Image.asset("assets/images/AI.jpg",
              //                       fit: BoxFit.cover),
              //                 ),
              //               ),
              //               const SizedBox(
              //                 width: 10,
              //               ),
              //               Text("Machine Learning"),
              //             ],
              //           ),
              //         ),
                  
                
              //         // Add more containers as needed
              //       ],
              //     ))
       
   


   //  return Padding(
                      //    padding: const EdgeInsets.only(right: 10),
                      //    child: Container(
                      //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white,),

                      //  padding: EdgeInsets.only(left: 17,right: 17),
                      //      height: 230,
                      //      width: 180,
                      //      child: Column(

                      //    mainAxisAlignment: MainAxisAlignment.center,
                      //    crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: [
                      //                  ClipRRect(borderRadius: BorderRadius.circular(10),
                      //                   child: Image.asset("assets/images/AI.jpg")),
                      //                  const SizedBox(height: 10,),
                      //                  Text("Machine Learning and Data Science",style: TextStyle(fontSize: TextClass.customTextSizes["medium"],fontWeight: FontWeight.w700),),
                      //                  Text("Stanford University",style: TextStyle(fontSize: TextClass.customTextSizes["semi-medium"],fontWeight: FontWeight.w400),),
                      //               Text("(64,45,466)",style: TextStyle(fontSize: TextClass.customTextSizes["small"],fontWeight: FontWeight.w400,color: ColorClass.customColors["Grey"]),),
                      //                 ],
                      //      ),
                      //    ),
                      //  );
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
// const SizedBox(height: 15,),
// Padding(
//   padding: const EdgeInsets.only(left: 25, right: 25),
//   child: Wrap(
//     spacing: 15, // Adjust the spacing between sets of containers
//     children: [
//       CustomContainerSet(
//         imageAsset: "assets/images/AI.jpg",
//         labelText: "Machine Learning",
//       ),
//       CustomContainerSet(
//         imageAsset: "assets/images/AI.jpg",
//         labelText: "HTML",
//       ),
//       CustomContainerSet(
//         imageAsset: "assets/images/AI.jpg",
//         labelText: "CSS",
//       ),
     
//     ],
//   ) ,
// )
// ,
//     Column(
//       children: [
//         Padding(
//   padding: const EdgeInsets.only(left: 25, right: 25),
//   child: Wrap(
//         spacing: 15, // Adjust the spacing between sets of containers
//         children: [
//           CustomContainerSet(
//             imageAsset: "assets/images/AI.jpg",
//             labelText: "Machine Learning",
//           ),
//           CustomContainerSet(
//             imageAsset: "assets/images/AI.jpg",
//             labelText: "HTML",
//           ),
//           CustomContainerSet(
//             imageAsset: "assets/images/AI.jpg",
//             labelText: "CSS",
//           ),
         
//         ],
//   ),
// ),
// const SizedBox(height: 15,),
// Padding(
//   padding: const EdgeInsets.only(left: 25, right: 25),
//   child: Wrap(
//     spacing: 15, // Adjust the spacing between sets of containers
//     children: [
//       CustomContainerSet(
//         imageAsset: "assets/images/AI.jpg",
//         labelText: "Machine Learning",
//       ),
//       CustomContainerSet(
//         imageAsset: "assets/images/AI.jpg",
//         labelText: "HTML",
//       ),
//       CustomContainerSet(
//         imageAsset: "assets/images/AI.jpg",
//         labelText: "CSS",
//       ),
     
//     ],
//   ),
// )
  
//       ],
//     ),
// Container(

//   padding: const EdgeInsets.only(left: 25, right: 25),
//   child: Wrap(
//         spacing: 15, // Adjust the spacing between sets of containers
//         children: [
//           CustomContainerSet(
//             imageAsset: "assets/images/AI.jpg",
//             labelText: "Machine Learning",
//           ),
//           CustomContainerSet(
//             imageAsset: "assets/images/AI.jpg",
//             labelText: "HTML",
//           ),
//           CustomContainerSet(
//             imageAsset: "assets/images/AI.jpg",
//             labelText: "CSS",
//           ),
//            CustomContainerSet(
//         imageAsset: "assets/images/AI.jpg",
//         labelText: "Machine Learning",
//       ),
//       CustomContainerSet(
//         imageAsset: "assets/images/AI.jpg",
//         labelText: "HTML",
//       ),
//       CustomContainerSet(
//         imageAsset: "assets/images/AI.jpg",
//         labelText: "CSS",
//       ),
//         ],
//   ),
// ),