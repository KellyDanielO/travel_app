import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: height,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: width,
                          height: height * .65,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/img/6.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () => Get.back(),
                                    icon: const Icon(
                                      CupertinoIcons.arrow_left,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      CupertinoIcons.bookmark_fill,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height * .02),
                        const Text(
                          "Lorem Ipsum",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Aclonica",
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height: height * .02),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    const Icon(
                                      Icons.monetization_on,
                                      size: 30,
                                      color: AppColors.primaryColor,
                                    ),
                                    SizedBox(height: height * .02),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.attach_money,
                                          color: Colors.black54,
                                          size: 30,
                                        ),
                                        Text(
                                          "230",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      size: 30,
                                      color: AppColors.primaryColor,
                                    ),
                                    SizedBox(height: height * .02),
                                    const Text(
                                      "5.4h",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    const Icon(
                                      Icons.star_half,
                                      size: 30,
                                      color: AppColors.primaryColor,
                                    ),
                                    SizedBox(height: height * .02),
                                    const Text(
                                      "3.2k",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * .02),
                        const Text(
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum, nisi. Corrupti est soluta, libero, ut suscipit error esse recusandae quibusdam quam at perferendis, dignissimos sit? Similique debitis quaerat consectetur numquam fugit qui tempora quia exercitationem. Natus pariatur consequuntur accusamus voluptatibus sapiente nostrum hic, omnis enim consequatur, eaque minus? Beatae, ex!",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: height * .1),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          CupertinoIcons.paperplane_fill,
                          color: AppColors.primaryColor,
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      width: width * .7,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      alignment: Alignment.center,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Book now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
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
// Thanks for watching source code link in the description
// Please subscribe to my channel and click the  bell icon to get notified for any of my latest videos
// Thank you