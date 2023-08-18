import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/ProccedToPay.dart';
import 'package:orinova_education_app/TextClass.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
//  inal TextEditingController controller = TextEditingController();
  bool shouldCheck = false;
  bool shouldCheckDefault1 = false;
   bool shouldCheckDefault2 = false;
    bool shouldCheckDefault3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      extendBodyBehindAppBar: false,
      body: Stack(children: [
        SafeArea(
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
                          "Checkout",
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
                      bottom: 300, left: 25, right: 25, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Payment Options",
                        style: TextStyle(
                            fontSize: 17.81,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF303841)),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            height: 47,
                            width: 47,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                "assets/images/AI.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          const Text(
                            "Credit Card",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFF303841)),
                          ),
                          Spacer(),
                          CustomCheckBox(
                            value: shouldCheckDefault1,
                            splashColor: Colors.blue.withOpacity(0.4),
                            tooltip: 'Custom Check Box',
                            splashRadius: 40,
                            onChanged: (val) {
                              setState(() {
                                shouldCheckDefault1 = val;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            height: 47,
                            width: 47,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                "assets/images/AI.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ), const SizedBox(width: 10,),
                          const Text(
                            "UPI",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFF303841)),
                          ),
                          Spacer(),
                          CustomCheckBox(
                            value: shouldCheckDefault2,
                            splashColor: Colors.blue.withOpacity(0.4),
                            tooltip: 'Custom Check Box',
                            splashRadius: 40,
                            onChanged: (val) {
                              setState(() {
                                shouldCheckDefault2 = val;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            height: 47,
                            width: 47,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                "assets/images/AI.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ), const SizedBox(width: 10,),
                          const Text(
                            "Net Banking",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFF303841)),
                          ),
                          Spacer(),
                          CustomCheckBox(
                            value: shouldCheckDefault3,
                            splashColor: Colors.blue.withOpacity(0.4),
                            tooltip: 'Custom Check Box',
                            splashRadius: 40,
                            onChanged: (val) {
                              setState(() {
                                shouldCheckDefault3 = val;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      const Text(
                        "Summary/Bill",
                        style: TextStyle(
                            fontSize: 17.81,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF303841)),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Anti Virus Installation",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFF303841)),
                          ),
                          Spacer(),
                          Text(
                            "INR 34,000",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFF303841)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Anti Virus Installation",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFF303841)),
                          ),
                          Spacer(),
                          Text(
                            "INR 34,000",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFF303841)),
                          ),
                        ],
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Color.fromARGB(75, 59, 59, 59)))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                fontSize: 22.14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF303841)),
                          ),
                          Spacer(),
                          Text(
                            "INR 34,000",
                            style: TextStyle(
                                fontSize: 22.14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF303841)),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF303841)),
                      ),
                      // const SizedBox(height: 0.2,),
                      Row(
                        children: [
                          Text(" \u20B9",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF303841))),
                          Text(" 5,999",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF303841))),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 47,
                    width: 215,
                    child: FloatingActionButton(
                      onPressed: () {},
                      elevation: 0,
                      backgroundColor:ColorClass.customColors["BlueGreen"],
                      child: TextButton(
                        child: const Text(
                          "Proceed to Pay",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF303841)),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProceedtoPay(),
                              ));
                        },
                      ),
                    ),
                  ),
                ],
              )),
        )
      ]),
    );
  }
}

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      // Stack(
      //   children: [
      //     SingleChildScrollView(
      //       child: Container(
      //         margin: const EdgeInsets.only(
      //             bottom: 300, left: 25, right: 25, top: 25),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [


                  
      //             const Text(
      //               "Payment Options",
      //               style: TextStyle(
      //                   fontSize: 17.81,
      //                   fontWeight: FontWeight.w600,
      //                   color: Color(0xFF303841)),
      //             ),
      //             const SizedBox(
      //               height: 25,
      //             ),
      //             Row(
      //               children: [
      //                 Container(
      //                   decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(16),
      //                   ),
      //                   height: 47,
      //                   width: 47,
      //                   child: ClipRRect(
      //                     borderRadius: BorderRadius.circular(16),
      //                     child: Image.asset(
      //                       "assets/images/antiVirus.jpg",
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //                 const Text(
      //                   "Credit Card",
      //                   style: TextStyle(fontSize: 15, color: Color(0xFF303841)),
      //                 ),
      //                 Spacer(),
      //                 CustomCheckBox(
      //                   value: shouldCheckDefault,
      //                   splashColor: Colors.blue.withOpacity(0.4),
      //                   tooltip: 'Custom Check Box',
      //                   splashRadius: 40,
      //                   onChanged: (val) {
      //                     setState(() {
      //                       shouldCheckDefault = val;
      //                     });
      //                   },
      //                 ),
      //               ],
      //             ),
      //             const SizedBox(
      //               height: 12,
      //             ),
      //             Row(
      //               children: [
      //                 Container(
      //                   decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(16),
      //                   ),
      //                   height: 47,
      //                   width: 47,
      //                   child: ClipRRect(
      //                     borderRadius: BorderRadius.circular(16),
      //                     child: Image.asset(
      //                       "assets/images/antiVirus.jpg",
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //                 const Text(
      //                   "UPI",
      //                   style: TextStyle(fontSize: 15, color: Color(0xFF303841)),
      //                 ),
      //                 Spacer(),
      //                 CustomCheckBox(
      //                   value: shouldCheckDefault,
      //                   splashColor: Colors.blue.withOpacity(0.4),
      //                   tooltip: 'Custom Check Box',
      //                   splashRadius: 40,
      //                   onChanged: (val) {
      //                     setState(() {
      //                       shouldCheckDefault = val;
      //                     });
      //                   },
      //                 ),
                      
      //               ],
      //             ),
      //             const SizedBox(
      //               height: 12,
      //             ),
      //             Row(
      //               children: [
      //                Container(
      //                   decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(16),
      //                   ),
      //                   height: 47,
      //                   width: 47,
      //                   child: ClipRRect(
      //                     borderRadius: BorderRadius.circular(16),
      //                     child: Image.asset(
      //                       "assets/images/antiVirus.jpg",
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //                 const Text(
      //                   "Net Banking",
      //                   style: TextStyle(fontSize: 15, color: Color(0xFF303841)),
      //                 ),
      //                 Spacer(),
      //                 CustomCheckBox(
      //                   value: shouldCheckDefault,
      //                   splashColor: Colors.blue.withOpacity(0.4),
      //                   tooltip: 'Custom Check Box',
      //                   splashRadius: 40,
      //                   onChanged: (val) {
      //                     setState(() {
      //                       shouldCheckDefault = val;
      //                     });
      //                   },
      //                 ),
      //               ],
      //             ),
      //             const SizedBox(
      //               height: 60,
      //             ),
      //             const Text(
      //               "Summary/Bill",
      //               style: TextStyle(
      //                   fontSize: 17.81,
      //                   fontWeight: FontWeight.w600,
      //                   color: Color(0xFF303841)),
      //             ),
      //             const SizedBox(
      //               height: 25,
      //             ),
      //             const Row(
      //               children: [
      //                 Text(
      //                   "Anti Virus Installation",
      //                   style: TextStyle(fontSize: 15, color: Color(0xFF303841)),
      //                 ),
      //                 Spacer(),
      //                 Text(
      //                   "INR 34,000",
      //                   style: TextStyle(fontSize: 15, color: Color(0xFF303841)),
      //                 ),
      //               ],
      //             ),
      //             const SizedBox(
      //               height: 10,
      //             ),
      //             const Row(
      //               children: [
      //                 Text(
      //                   "Anti Virus Installation",
      //                   style: TextStyle(fontSize: 15, color: Color(0xFF303841)),
      //                 ),
      //                 Spacer(),
      //                 Text(
      //                   "INR 34,000",
      //                   style: TextStyle(fontSize: 15, color: Color(0xFF303841)),
      //                 ),
      //               ],
      //             ),
      //             Container(
      //               decoration: const BoxDecoration(
      //                   border: Border(
      //                       top: BorderSide(
      //                           color: Color.fromARGB(75, 59, 59, 59)))),
      //             ),
      //             const SizedBox(
      //               height: 10,
      //             ),
      //             const Row(
      //               children: [
      //                 Text(
      //                   "Total",
      //                   style: TextStyle(
      //                       fontSize: 22.14,
      //                       fontWeight: FontWeight.w600,
      //                       color: Color(0xFF303841)),
      //                 ),
      //                 Spacer(),
      //                 Text(
      //                   "INR 34,000",
      //                   style: TextStyle(
      //                       fontSize: 22.14,
      //                       fontWeight: FontWeight.w600,
      //                       color: Color(0xFF303841)),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     Align(
      //       alignment: Alignment.bottomCenter,
      //       child: Container(
      //           height: 100,
      //           decoration: const BoxDecoration(
      //             color: Colors.white,
      //           ),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //             children: [
      //               const Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Text(
      //                     "Total Price",
      //                     style: TextStyle(
      //                         fontSize: 15,
      //                         fontWeight: FontWeight.w400,
      //                         color: Color(0xFF303841)),
      //                   ),
      //                   // const SizedBox(height: 0.2,),
      //                   Row(
      //                     children: [
      //                       Text(" \u20B9",
      //                           style: TextStyle(
      //                               fontSize: 30,
      //                               fontWeight: FontWeight.w700,
      //                               color: Color(0xFF303841))),
      //                       Text(" 5,999",
      //                           style: TextStyle(
      //                               fontSize: 30,
      //                               fontWeight: FontWeight.w700,
      //                               color: Color(0xFF303841))),
      //                     ],
      //                   )
      //                 ],
      //               ),
      //               SizedBox(
      //                 height: 47,
      //                 width: 215,
      //                 child: FloatingActionButton(
      //                   onPressed: () {},
      //                   elevation: 0,
      //                   backgroundColor: Color.fromARGB(150, 236, 249, 255,),
      //                   child: TextButton(
      //                     child: const Text(
      //                       "Proceed to Pay",
      //                       style: TextStyle(
      //                           fontSize: 14,
      //                           fontWeight: FontWeight.w700,
      //                           color: Color(0xFF303841)),
      //                     ),
      //                     onPressed: () {
      //                       Navigator.push(
      //                           context,
      //                           MaterialPageRoute(
      //                             builder: (context) => ProceedtoPay(),
      //                           ));
      //                     },
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           )),
      //     ),
      //   ],
     // ),
