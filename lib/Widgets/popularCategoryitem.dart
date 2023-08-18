import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/TextClass.dart';
class PopularCategoryItem extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const PopularCategoryItem({
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 30,
          width: 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset("assets/images/AI.jpg", fit: BoxFit.cover),
          ),
        ),
        TextButton(
          child: Text(
            title,
            style: TextStyle(
              color: ColorClass.customColors["Black"],
              fontSize: TextClass.customTextSizes['medium'],
              fontWeight: FontWeight.w400,
            ),
          ),
          onPressed: onPressed,
        ),
      ],
    );
  }
}