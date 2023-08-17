import 'package:flutter/material.dart';
import 'package:orinova_education_app/Screens/SelectedCategoried.dart';
import 'package:orinova_education_app/TextClass.dart';

class CustomContainerSet extends StatelessWidget {
  final String imageAsset;
  final String labelText;

  CustomContainerSet({required this.imageAsset, required this.labelText});

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SelectedCategoriesScreen(),
          ),
        );
      },
      child:
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
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
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(imageAsset, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(labelText,style: TextStyle(fontSize: TextClass.customTextSizes['small'],fontWeight: FontWeight.w700),),
        ],
      ),
    )
    );
  }
}
