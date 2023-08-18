import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/courseDetails.dart';
import 'package:orinova_education_app/TextClass.dart';


class CustomCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String university;
  final String rating;

  const CustomCard({super.key, 
    required this.imagePath,
    required this.title,
    required this.university,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: GestureDetector(
         onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CourseDetails(),
          ),
        );
      },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          width: 173,
          child: Padding(
            padding: const EdgeInsets.only(left: 17, right: 17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          imagePath,
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
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: TextClass.customTextSizes['medium'],
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  university,
                  style: TextStyle(
                    fontSize: TextClass.customTextSizes['semi-medium'],
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "(64,45,466)",
                      style: TextStyle(
                        fontSize: TextClass.customTextSizes['small'],
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(170, 132, 130, 130),
                      ),
                    ),
                    Icon(
                      Icons.star_rounded,
                      size: 12,
                      color: ColorClass.customColors['BlueGreen'],
                    ),
                    Text(
                      rating,
                      style: TextStyle(
                        fontSize: 12,
                        color: ColorClass.customColors['BlueGreen'],
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
