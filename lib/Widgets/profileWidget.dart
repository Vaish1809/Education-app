// widget_builder.dart

import 'package:flutter/material.dart';
import 'package:orinova_education_app/Screens/Servicehistory.dart';

Widget buildRow(BuildContext context ,  String text) {
  return Row(
    children: [
      Text(
        text,
        style: const TextStyle(fontSize: 17.81, fontWeight: FontWeight.w400, color: Color(0xFF303841)),
      ),
      const Spacer(),
      IconButton(
        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const ServiceHistory(),));},
        icon: const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 19,
        ),
      ),
    ],
  );
}

// Widget buildMessageRow() {
//    final TextEditingController controller = TextEditingController();
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//         "Send a message",
        
//         style: TextStyle( color: Color(0xFF303841),fontSize: 17.81, fontWeight: FontWeight.w400),
//       ),
//       const SizedBox(height: 15),
//       Container(
//         height: 88,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(color: Color.fromARGB(194, 219, 219, 219)),
//         ),
//         padding: EdgeInsets.symmetric(horizontal: 8),
//         child: TextField(
//           controller: controller,
//           style: TextStyle(fontSize: 15, color: Color(0xFF303841)),
//           decoration: InputDecoration(
//             hintText: "Write a message...",
//             border: InputBorder.none,
//           ),
//           maxLines: null,
//           expands: true,
//         ),
//       ),
//       const SizedBox(
//         height: 10,
//       ),
//       // Center(
//       //   child: SizedBox(
//       //     width: 120,
//       //     height: 40,
//       //     child: FloatingActionButton(
//       //       onPressed: () {},
//       //       elevation: 0,
//       //       backgroundColor: Color.fromARGB(150, 236, 249, 255,),
//       //       child: Text(
//       //         "Submit",
//       //         style: TextStyle(fontSize: 14, color: Color(0xFF303841), fontWeight: FontWeight.w700),
//       //       ),
//       //     ),
//       //   ),
//       // ),
//     ],
//   );
// }