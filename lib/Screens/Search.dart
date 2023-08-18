import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/AllCategoreis.dart';
import 'package:orinova_education_app/TextClass.dart';
import 'package:orinova_education_app/Widgets/TopUni.dart';
import 'package:orinova_education_app/Widgets/popularCategory.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
     final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(80, 225, 230, 230),
        body: SafeArea(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: ColorClass.customColors['BlueGreen'],
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text("Find a Course",
                              style: TextStyle(
                                fontSize: TextClass.customTextSizes['appBar'],
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              )),
                          const Spacer(),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: TextField(
                              style: const TextStyle(
                                  fontSize: 16, color: Color(0xFF303841)),
                              controller: controller,
                              decoration: InputDecoration(
                                hintText: "Search ",
                                border: InputBorder.none,
                                labelStyle: const TextStyle(
                                    fontSize: 16, color: Color(0xFF303841)),
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
                        ],
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
    ],
  ),
              ),

 Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Text(
                      "Top Universities",
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
      TopUniCard(
        imageAsset: "assets/images/AI.jpg",
        uniName: "Harvard University",
        uniLoc: "Cambrige(USA)",
      ),
        TopUniCard(
        imageAsset: "assets/images/AI.jpg",
        uniName: "Harvard University",
        uniLoc: "Cambrige(USA)",
      ),
        TopUniCard(
        imageAsset: "assets/images/AI.jpg",
        uniName: "Harvard University",
        uniLoc: "Cambrige(USA)",
      ),
        TopUniCard(
        imageAsset: "assets/images/AI.jpg",
        uniName: "Harvard University",
        uniLoc: "Cambrige(USA)",
      ),
        TopUniCard(
        imageAsset: "assets/images/AI.jpg",
        uniName: "Harvard University",
        uniLoc: "Cambrige(USA)",
      ),
           TopUniCard(
        imageAsset: "assets/images/AI.jpg",
        uniName: "Harvard University",
        uniLoc: "Cambrige(USA)",
      ),
        
     
       
   ],
  ),
),

              const SizedBox(height: 100,),  ]
            )
        )
        )
                );
  }
}

        //  Padding(
        //     padding: const EdgeInsets.only(left: 25, right: 25),
        //     child: Container(
        //       height: 230,
        //       child: ListView.builder(
        //        // scrollDirection: Axis.horizontal,
        //         itemCount: 10,
        //         itemBuilder: (context, index) {
        //           return TopUniCard(
        //             imagePath: "assets/images/AI.jpg",
        //             title: "Harvard University",
        //             university: "Cambridge(USA)",
                  
        //           );
        //         },
        //       ),
        //     ),
        //   ),
 