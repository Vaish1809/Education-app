import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/Payment.dart';
import 'package:orinova_education_app/TextClass.dart';
import 'package:orinova_education_app/Widgets/WishlistCard.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<WishlistModel> wishitems = [
    WishlistModel(
      // title:"lkjhgfdsasdfghjlkbihbtbibibh m,tiuhrugh0qihgbnb njfd",
      title: "Machine Learning and Data Science ",
      provider: "Standford University",
      imageUrl: "assets/images/AI.jpg",
      icon: const Icon(Icons.delete_rounded),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 246, 246, 246),
        body: SafeArea(
            child: Stack(
          children: [
            SingleChildScrollView(
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
                                child: Navigator.canPop(context)
                                    ? IconButton(
                                        icon: Icon(
                                          Icons.arrow_back_rounded,
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      )
                                    : null, // Set to null if there's no route to pop

                                // IconButton(
                                //   onPressed: () {
                                //     Navigator.pop(context);
                                //   },
                                //   icon: const Icon(
                                //     Icons.arrow_back_rounded,
                                //     size: 30,
                                //   ),
                                // ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Cart",
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

                      // Container(
                      // width: double.infinity,
                      // decoration: BoxDecoration(
                      //     color: ColorClass.customColors['BlueGreen'],
                      //     borderRadius: const BorderRadius.only(
                      //       bottomLeft: Radius.circular(20),
                      //       bottomRight: Radius.circular(20),
                      //     )),
                      // height: 100,
                      // child: Padding(
                      //   padding: const EdgeInsets.all(25),
                      //   child: Align(
                      //     alignment: Alignment.center,
                      //     child: Text("Cart",
                      //         style: TextStyle(
                      //           fontSize: TextClass.customTextSizes['appBar'],
                      //           fontWeight: FontWeight.w700,
                      //           color: Colors.white,
                      //         )),
                      //   ),
                      // )),

                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 200, left: 25, right: 25, top: 25),
                        child: Column(
                          children: [
                            for (var wishitem in wishitems)
                              WishlistCard(wishitem),
                            const SizedBox(height: 21),
                            for (var wishitem in wishitems)
                              WishlistCard(wishitem),
                            const SizedBox(height: 21),
                            for (var wishitem in wishitems)
                              WishlistCard(wishitem),
                            const SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                      ),
                    ])),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
                height: 80, // Adjust the height as needed
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22),
                        topRight: Radius.circular(22))),
                child: FloatingActionButton(
                  onPressed: () {},
                  elevation: 0,
                  backgroundColor: ColorClass.customColors["BlueGreen"],
                  child: TextButton(
                    child: const Text(
                      "Checkout",
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
            ),
          ],
        )));
  }
}
