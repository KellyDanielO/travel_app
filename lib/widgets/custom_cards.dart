import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_site/constants/colors.dart';

class CustomCard extends StatelessWidget {
  final String location;
  final String price;
  final String image;
  final double width;
  final double height;
  const CustomCard(
      {super.key,
      required this.location,
      required this.price,
      required this.image,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * .6,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.only(right: width * .03),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width * .6,
              height: height * .25,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * .01),
            Text(
              location,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: height * .01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.attach_money,
                      color: AppColors.primaryColor,
                      size: 30,
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                const Icon(CupertinoIcons.heart, size: 30,color: AppColors.grey,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
