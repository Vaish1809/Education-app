import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/TextClass.dart';
import 'package:orinova_education_app/Widgets/CustomAppBar.dart';
import 'package:orinova_education_app/Widgets/ServiceCard.dart';
import 'package:orinova_education_app/Widgets/WishlistCard.dart';

class SelectedCategoriesScreen extends StatefulWidget {
  const SelectedCategoriesScreen({super.key});

  @override
  State<SelectedCategoriesScreen> createState() => _SelectedCategoriesScreenState();
}

class _SelectedCategoriesScreenState extends State<SelectedCategoriesScreen> {
  List<WishlistModel> wishitems = [
    WishlistModel(
      // title:"lkjhgfdsasdfghjlkbihbtbibibh m,tiuhrugh0qihgbnb njfd",
      title: "Machine Learning and Data Science ",
      provider: "Standford University",
      imageUrl: "assets/images/AI.jpg",
      icon: Icon(Icons.shopping_cart)
    ),
  ];
  @override
  Widget build(BuildContext context) {
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
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorClass.customColors['BlueGreen'],
                          borderRadius: BorderRadius.only(
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
                                  icon: Icon(
                                    Icons.arrow_back_rounded,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Data Science",
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

                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 100, left: 25, right: 25,top: 25),
                        child: Column(
                          children: [
                            for (var wishitem in wishitems)
                              WishlistCard(wishitem),
                            SizedBox(height: 21),
                            for (var wishitem in wishitems)
                              WishlistCard(wishitem),
                            SizedBox(height: 21),
                            for (var wishitem in wishitems)
                              WishlistCard(wishitem),
                            SizedBox(height: 21),
                          ],
                        ),
                      ),
                    ]))));
  }
}
