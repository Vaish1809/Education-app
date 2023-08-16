import 'package:flutter/material.dart';
import 'package:orinova_education_app/TextClass.dart';

class CustomContainerSet extends StatelessWidget {
  final String imageAsset;
  final String labelText;

  CustomContainerSet({required this.imageAsset, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 26,
            width: 26,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(imageAsset, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(labelText,style: TextStyle(fontSize: TextClass.customTextSizes['small'],fontWeight: FontWeight.w700),),
        ],
      ),
    );
  }
}
