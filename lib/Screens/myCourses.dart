import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/TextClass.dart';
import 'package:orinova_education_app/Widgets/ServiceCard.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({super.key});

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses>  {
  
   List<ServiceModel> services = [
    // Populate this list with your service data
    ServiceModel(
    // title:"lkjhgfdsasdfghjlkbihbtbibibh m,tiuhrugh0qihgbnb njfd",
    title: "Machine Learning and Data Science ",
      description: "Standford University",
      provider: "75% complete",
    
      imageUrl: "assets/images/AI.jpg",
   
    ),
    // Add more service items here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(80, 225, 230, 230),
        body: SafeArea(
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
                          )),
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("My Learnings",
                              style: TextStyle(
                                fontSize: TextClass.customTextSizes['appBar'],
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              )),
                        ),
                      )),
                       
                  Container(
              margin: const EdgeInsets.only(bottom: 100, left: 25, right: 25,top: 25),
              child: Column(
                children: [
                  for (var service in services) ServiceCard(service),
                  const SizedBox(height: 21),
                  for (var service in services) ServiceCard(service),
                  const SizedBox(height: 21),
                  for (var service in services) ServiceCard(service),
                  const SizedBox(height: 21),
                  
                ],
              ),
            ),
             
              
                ]))));
  }
}
