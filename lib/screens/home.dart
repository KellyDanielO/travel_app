import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_site/constants/colors.dart';
import 'package:travel_site/screens/details.dart';
import 'package:travel_site/widgets/custom_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<String> images = [
    "assets/img/1.jpg",
    "assets/img/2.jpg",
    "assets/img/3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          alignment: Alignment.center,
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.dashboard,
              size: 30,
              color: AppColors.grey,
            ),
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            alignment: Alignment.center,
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                CupertinoIcons.bell,
                size: 30,
                color: AppColors.grey,
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: height,
                  child: Column(
                    children: [
                      SizedBox(height: height * .05),
                      SizedBox(
                        width: width,
                        height: height * .3,
                        child: Stack(
                          children: [
                            Positioned(
                              child: SizedBox(
                                width: width,
                                height: height * .3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: PageView.builder(
                                    itemCount: images.length,
                                    physics: const ClampingScrollPhysics(),
                                    onPageChanged: (value) {
                                      setState(() {
                                        currentIndex = value;
                                      });
                                    },
                                    itemBuilder: (context, index) {
                                      return Image.asset(
                                        images[index],
                                        fit: BoxFit.cover,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 25,
                              left: 25,
                              child: Text(
                                "Welcome for tour",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Aclonica",
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 0,
                              right: 0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  images.length,
                                  (index) => AnimatedContainer(
                                    duration: const Duration(milliseconds: 500),
                                    width: currentIndex == index ? 20 : 10,
                                    height: 10,
                                    margin: const EdgeInsets.only(right: 5),
                                    decoration: BoxDecoration(
                                        color: currentIndex == index
                                            ? AppColors.primaryColor
                                            : Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * .05),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top trips",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Explore",
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: height * .02),
                      SizedBox(
                        width: width,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () => Get.to(() => const DetailsScreen()),
                                child: CustomCard(
                                  location: "Lorem Ipsum",
                                  price: "230",
                                  image: "assets/img/5.jpg",
                                  width: width,
                                  height: height,
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(() => const DetailsScreen()),
                                child: CustomCard(
                                  location: "Lorem Ipsum",
                                  price: "720",
                                  image: "assets/img/6.jpg",
                                  width: width,
                                  height: height,
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(() => const DetailsScreen()),
                                child: CustomCard(
                                  location: "Lorem Ipsum",
                                  price: "130",
                                  image: "assets/img/7.jpg",
                                  width: width,
                                  height: height,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: width,
                color: AppColors.bg,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.home_filled,
                        size: 35,
                        color: AppColors.primaryColor,
                      ),
                      const Icon(
                        Icons.search,
                        size: 35,
                        color: AppColors.grey,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.explore,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.bookmark_outline,
                        size: 35,
                        color: AppColors.grey,
                      ),
                      const Icon(
                        Icons.person_outline,
                        size: 35,
                        color: AppColors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
