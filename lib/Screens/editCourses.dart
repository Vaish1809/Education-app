
import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/SelectedCategoried.dart';
import 'package:orinova_education_app/TextClass.dart';
import 'package:orinova_education_app/Widgets/popularCategoryitem.dart';
import 'package:flutter/material.dart';

class editCourses extends StatefulWidget {
  const editCourses({super.key});

  @override
  State<editCourses> createState() => _editCoursesState();
}

class _editCoursesState extends State<editCourses> {
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
                              builder: (context) => SelectedCategoriesScreen(),
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
                              builder: (context) => SelectedCategoriesScreen(),
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
                              builder: (context) => SelectedCategoriesScreen(),
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
                              builder: (context) => SelectedCategoriesScreen(),
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
                              builder: (context) => SelectedCategoriesScreen(),
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
                              builder: (context) => SelectedCategoriesScreen(),
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
            ],
          ),
        ),
      ),
    );
  }
}


//Create a screen where you can select the texts and add them to the list:
// class TextSelectionScreen extends StatelessWidget {
//   final List<String> allTexts = ['Text 1', 'Text 2', 'Text 3', /* ... */];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Select Texts')),
//       body: ListView.builder(
//         itemCount: allTexts.length,
//         itemBuilder: (context, index) {
//           String text = allTexts[index];
//           return ListTile(
//             title: Text(text),
//             onTap: () {
//               final selectedTextProvider =
//                   context.read<SelectedTextProvider>();
//               selectedTextProvider.addSelectedText(text);
//             },
//           );
//         },
//       ),
//     );
//   }
// }


// Create a screen to display the selected texts:
// dart
// Copy code
// class DisplaySelectedTextsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final selectedTextProvider = context.watch<SelectedTextProvider>();
//     final selectedTexts = selectedTextProvider.selectedTexts;

//     return Scaffold(
//       appBar: AppBar(title: Text('Selected Texts')),
//       body: ListView.builder(
//         itemCount: selectedTexts.length,
//         itemBuilder: (context, index) {
//           String text = selectedTexts[index].text;
//           return ListTile(title: Text(text));
//         },
//       ),
//     );
//   }
// }