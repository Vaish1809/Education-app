import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/courseDetails.dart';
import 'package:orinova_education_app/TextClass.dart';

class ServiceModel {
  final String title;
  final String description;
  final String provider;

  final String imageUrl;

  ServiceModel({
    required this.title,
    required this.description,
    required this.provider,
    required this.imageUrl,
  });
}

class ServiceCard extends StatelessWidget {
  final ServiceModel service;

  ServiceCard(this.service);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CourseDetails(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(
          right: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        height: 142,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              height: 100,
              width: 135,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      service.imageUrl,
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_rounded,
                        size: 20,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    maxLines: 2, // Allow up to 2 lines of text
                    overflow: TextOverflow.ellipsis,
                    service.title,
                    style: TextStyle(
                      color: ColorClass.customColors['Black'],
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    service.description,
                    style: TextStyle(
                        fontSize: TextClass.customTextSizes["semi-medium"],
                        color: ColorClass.customColors['Black'],
                        height: 1.3),
                  ),
                  Text(
                    service.provider,
                    style: TextStyle(
                        fontSize: TextClass.customTextSizes["small"],
                        color: ColorClass.customColors['Black'],
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
