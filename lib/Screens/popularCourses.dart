import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/SelectedUniversity.dart';
import 'package:orinova_education_app/TextClass.dart';
import 'package:orinova_education_app/Widgets/customCard.dart';


class PopularCourses extends StatefulWidget {
  const PopularCourses({super.key});

  @override
  State<PopularCourses> createState() => _PopularCoursesState();
}

class _PopularCoursesState extends State<PopularCourses> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 246, 246, 246),
    body:  SafeArea(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorClass.customColors['BlueGreen'],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        height: 100,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25),
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
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Popular Courses",
                                style: TextStyle(
                                  fontSize: TextClass.customTextSizes['appBar'],
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Text(
                      "Data Science",
                      style: TextStyle(
                          fontSize: TextClass.customTextSizes["large"],
                          fontWeight: FontWeight.w700),
                    ),
//                  const Spacer(),
  //                   TextButton(
  //                     onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedUniversityScreen(),));},
  //                     child: Text(
  // "See All",
  //                     style: TextStyle(
  //                         color: ColorClass.customColors['BlueGreen'],
  //                         fontSize: TextClass.customTextSizes["seemore"],
  //                         fontWeight: FontWeight.w700),
  //                     ),
                    
  //                   )
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
                      "Data Science",
                      style: TextStyle(
                          fontSize: TextClass.customTextSizes["large"],
                          fontWeight: FontWeight.w700),
                    ),
  //                   const Spacer(),
  //                   TextButton(
  //                     onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedUniversityScreen(),));},
  //                     child: Text(
  // "See All",
  //                     style: TextStyle(
  //                         color: ColorClass.customColors['BlueGreen'],
  //                         fontSize: TextClass.customTextSizes["seemore"],
  //                         fontWeight: FontWeight.w700),
  //                     ),
                    
  //                   )
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
                      "Data Science",
                      style: TextStyle(
                          fontSize: TextClass.customTextSizes["large"],
                          fontWeight: FontWeight.w700),
                    ),
  //                   const Spacer(),
  //                   TextButton(
  //                     onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedUniversityScreen(),));},
  //                     child: Text(
  // "See All",
  //                     style: TextStyle(
  //                         color: ColorClass.customColors['BlueGreen'],
  //                         fontSize: TextClass.customTextSizes["seemore"],
  //                         fontWeight: FontWeight.w700),
  //                     ),
                    
  //                   )
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
                      "Data Science",
                      style: TextStyle(
                          fontSize: TextClass.customTextSizes["large"],
                          fontWeight: FontWeight.w700),
                    ),
  //                   const Spacer(),
  //                   TextButton(
  //                     onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedUniversityScreen(),));},
  //                     child: Text(
  // "See All",
  //                     style: TextStyle(
  //                         color: ColorClass.customColors['BlueGreen'],
  //                         fontSize: TextClass.customTextSizes["seemore"],
  //                         fontWeight: FontWeight.w700),
  //                     ),
                    
  //                   )
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
     
          
       
                      
                    ]
                    )
                    )
                    )
    );
  }
}