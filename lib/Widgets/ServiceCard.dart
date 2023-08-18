import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/courseDetails.dart';
import 'package:orinova_education_app/TextClass.dart';
import 'package:percent_indicator/percent_indicator.dart';
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

  const ServiceCard(this.service, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CourseDetails(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
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
              margin: const EdgeInsets.only(left: 15, right: 15),
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
                      icon: const Icon(
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
              
                Padding(
    padding: const EdgeInsets.only(top: 8), // Adjust the top padding as needed
        child: LinearPercentIndicator(
          barRadius: Radius.circular(10),
          backgroundColor: ColorClass.customColors["Light"],
          lineHeight: 8.0,
          percent: 0.9,
          progressColor: ColorClass.customColors["BlueGreen"],
        ),
                   ),
             
  // Expanded(
  //   child: new LinearPercentIndicator(
  //                   barRadius: Radius.circular(10),
  //                     lineHeight: 8.0,
  //                     percent: 0.9,
  //                     progressColor: Colors.blue,
  //                   ),
  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
