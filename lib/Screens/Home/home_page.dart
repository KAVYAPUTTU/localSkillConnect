import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> imglist = [
    'assets/img/carouselimg.jpg',
    'assets/img/carouselimg.jpg',
    'assets/img/carouselimg.jpg'
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 2,
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcome, John Doe',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 16, color: Colors.white),
                    SizedBox(width: 4),
                    Text(
                      'City, District',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: const [
            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [      
          Center(
            child: SizedBox(
              height: 250,
              width: 370,
              child: AnotherCarousel(
                images: imglist
                    .map((imgPath) => Image.asset(imgPath, fit: BoxFit.contain))
                    .toList(),
                dotSize: 4,
                dotSpacing: 15,
                dotIncreasedColor:Colors.black,
                dotColor: Colors.grey,
                indicatorBgPadding: 55,
                dotBgColor: const Color.fromARGB(0, 255, 255, 255),
                dotPosition: DotPosition.bottomCenter,
                autoplay: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
