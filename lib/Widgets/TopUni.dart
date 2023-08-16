import 'package:flutter/material.dart';
import 'package:orinova_education_app/TextClass.dart';

class TopUniCard extends StatelessWidget {
  final String imageAsset;
  final String uniName;
  final String uniLoc;

  TopUniCard({required this.imageAsset, required this.uniName,required this.uniLoc});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 113,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: Colors.white,
      ),
    //  padding: EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(imageAsset, fit: BoxFit.cover),
            ),
          ),
          // const SizedBox(
          //   width: 10,
          // ),
          const SizedBox(height: 10,),
          Text(uniName,style: TextStyle(fontSize: TextClass.customTextSizes['small'],fontWeight: FontWeight.w700),),
                 Text(uniLoc,style: TextStyle(fontSize: TextClass.customTextSizes['small'],fontWeight: FontWeight.w300),),
        ],
      ),
    );
  }
}
