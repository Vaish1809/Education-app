import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/courseDetails.dart';
import 'package:orinova_education_app/TextClass.dart';

class WishlistModel {
  final String title;
  final String provider;

  final String imageUrl;
  final Icon icon;

  WishlistModel({
    required this.title,
    required this.provider,
    required this.imageUrl,
    required this.icon,
  });
}

class WishlistCard extends StatelessWidget {
  final WishlistModel wishitem;

  const WishlistCard(this.wishitem, {super.key});

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
                      wishitem.imageUrl,
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
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      maxLines: 2, // Allow up to 2 lines of text
                      overflow: TextOverflow.ellipsis,
                      wishitem.title,
                      style: TextStyle(
                        color: ColorClass.customColors['Black'],
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      wishitem.provider,
                      style: TextStyle(
                          fontSize: TextClass.customTextSizes["semi-medium"],
                          color: ColorClass.customColors['Black'],
                          height: 1.3),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: 
                             wishitem.icon,
                             
                            ),
                        const Text(
                          "\$18.09",
                          style: TextStyle(
                              fontSize: 17.5, fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
