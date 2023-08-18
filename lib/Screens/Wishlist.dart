import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/TextClass.dart';
import 'package:orinova_education_app/Widgets/WishlistCard.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  List<WishlistModel> wishitems = [
    WishlistModel(
      // title:"lkjhgfdsasdfghjlkbihbtbibibh m,tiuhrugh0qihgbnb njfd",
      title: "Machine Learning and Data Science ",
      provider: "Standford University",
      imageUrl: "assets/images/AI.jpg",
      icon:const Icon(Icons.shopping_cart),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 246, 246, 246),
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
                                "Wishlist",
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
                            const SizedBox(height: 21),
                            for (var wishitem in wishitems)
                              WishlistCard(wishitem),
                            const SizedBox(height: 21),
                            for (var wishitem in wishitems)
                              WishlistCard(wishitem),
                            const SizedBox(height: 21),
                            for (var wishitem in wishitems)
                              WishlistCard(wishitem),
                            const SizedBox(height: 21),
                            for (var wishitem in wishitems)
                              WishlistCard(wishitem),
                            const SizedBox(height: 21),
                            for (var wishitem in wishitems)
                              WishlistCard(wishitem),
                            const SizedBox(height: 21),
                            for (var wishitem in wishitems)
                              WishlistCard(wishitem),
                            const SizedBox(height: 21),

                          ],
                        ),
                      ),
                      const SizedBox(height: 50,),
                    ]))));
  }
}
     // Container(
                      //     width: double.infinity,
                      //     decoration: BoxDecoration(
                      //         color: ColorClass.customColors['BlueGreen'],
                      //         borderRadius: BorderRadius.only(
                      //           bottomLeft: Radius.circular(20),
                      //           bottomRight: Radius.circular(20),
                      //         )),
                      //     height: 120,
                      //     child: Padding(
                      //       padding: EdgeInsets.all(25),
                      //       child: Row(
                      //      // mainAxisAlignment: MainAxisAlignment.start,
                      //         children: [
                      //            IconButton(onPressed:
                      //           (){}, icon:Icon(Icons.arrow_back_rounded) ),
                      //    Spacer(),

                      //             Text("My Learnings",
                      //                   style: TextStyle(
                      //                     fontSize: TextClass.customTextSizes['appBar'],
                      //                     fontWeight: FontWeight.w700,
                      //                     color: Colors.white,
                      //                   )),

                      //           Spacer(),
                      //         ],
                      //       ),
                      //     )),
// Container(
//   width: double.infinity,
//   decoration: BoxDecoration(
//     color: ColorClass.customColors['BlueGreen'],
//     borderRadius: BorderRadius.only(
//       bottomLeft: Radius.circular(20),
//       bottomRight: Radius.circular(20),
//     ),
//   ),
//   height: 120,
//   child: Padding(
//     padding: EdgeInsets.all(25),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.arrow_back_rounded),
//         ),
//  Text(
//             "My Learnings",
//             style: TextStyle(
//               fontSize: TextClass.customTextSizes['appBar'],
//               fontWeight: FontWeight.w700,
//               color: Colors.white,
//             ),
//           ),

//       ],
//     ),
//   ),
// ),
