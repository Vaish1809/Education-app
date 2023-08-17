import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/SignOut.dart';
import 'package:orinova_education_app/TextClass.dart';
import 'package:orinova_education_app/Widgets/TopUni.dart';
import 'package:orinova_education_app/Widgets/popularCategory.dart';
import 'package:orinova_education_app/Widgets/profileWidget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 246, 246),
        body: SafeArea(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 25, right: 25),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorClass.customColors['BlueGreen'],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        height: 240,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
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
                                    height: 25,
                                  ),
                                  Text(
                                    "Wishlist",
                                    style: TextStyle(
                                      fontSize:
                                          TextClass.customTextSizes['appBar'],
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        width: double.infinity,
                                        height: 140,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(22),
                                        ),
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,  
                                              children: [
                                                Text("Aashi",
                                                    style: TextStyle(
                                                      fontSize: TextClass
                                                              .customTextSizes[
                                                          'large'],
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    )),
                                                Text("aashi@gmail.com",
                                                    style: TextStyle(
                                                      fontSize: TextClass
                                                              .customTextSizes[
                                                          'medium'],
                                                     
                                                    )),
                                                    
                                              ],
                                            ),
                                            const SizedBox(width: 40,),
                                            Container(
                                              width: 110,
                                              height: 110,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: ClipOval(
                                                  child: Image.asset(
                                                "assets/images/AI.jpg",
                                                fit: BoxFit.cover,
                                              )),
                                            )
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
              

                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Row(
                          children: [
                            Text(
                              "Categories",
                              style: TextStyle(
                                  fontSize: TextClass.customTextSizes["large"],
                                  fontWeight: FontWeight.w700),
                            ),
                            Spacer(),
                            Text(
                              "See more",
                              style: TextStyle(
                                  color: ColorClass.customColors['BlueGreen'],
                                  fontSize: TextClass.customTextSizes["small"],
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: Wrap(
                          spacing: screenSize.width >= 500
                              ? 15
                              : 10, // Adjust spacing based on available width
                          runSpacing: screenSize.width >= 500
                              ? 15
                              : 10, // Adjust spacing based on available width
                          children: [
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
                        padding: EdgeInsets.all(25),
                        child: Row(
                          children: [
                            Text(
                              "Universities",
                              style: TextStyle(
                                  fontSize: TextClass.customTextSizes["large"],
                                  fontWeight: FontWeight.w700),
                            ),
                            Spacer(),
                            Text(
                              "See more",
                              style: TextStyle(
                                  color: ColorClass.customColors['BlueGreen'],
                                  fontSize: TextClass.customTextSizes["small"],
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: Wrap(
                          spacing: screenSize.width >= 500
                              ? 15
                              : 10, // Adjust spacing based on available width
                          runSpacing: screenSize.width >= 500
                              ? 15
                              : 10, // Adjust spacing based on available width
                          children: [
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
                       Container(
              margin: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildRow(context,"Service History"),
                  buildRow(context,"Customer Care"),
                  buildRow(context,"FAQ's"),
                  buildRow(context,"About us"),
                  buildRow(context,"Terms and Conditions"),
                  buildRow(context,"Privacy Policy"),
              
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      child:const Text(
                        "Sign out",
                        style: TextStyle(
                          fontSize: 17.81,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 3, 156, 156),),
                        ),
                      
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignOut(),));
                      },
                    ),
                  )
                ],
              ),
            ),
                    ]))));
  }
}
