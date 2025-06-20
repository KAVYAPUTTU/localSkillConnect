import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:localskillconnect/Widgets/requests.dart';

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
              height: 200,
              width: 370,
              child: AnotherCarousel(
                images: imglist
                    .map((imgPath) => Image.asset(imgPath, fit: BoxFit.contain))
                    .toList(),
                dotSize: 4,
                dotSpacing: 15,
                dotIncreasedColor: Colors.black,
                dotColor: Colors.grey,
                indicatorBgPadding: 30,
                dotBgColor: const Color.fromARGB(0, 255, 255, 255),
                dotPosition: DotPosition.bottomCenter,
                autoplay: true,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Cards(
                      colorname: Colors.green,
                      imgname: 'assets/img/earnings.png',
                      title: '\$450',
                      subtitle: 'Earnings',
                      textcolor: Colors.white,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Cards(
                      colorname: Colors.red,
                      imgname: 'assets/img/lostjobs.png',
                      title: '5',
                      subtitle: 'Lost Jobs',
                      textcolor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Cards(
                        colorname: Colors.yellow,
                        imgname: 'assets/img/rate.png',
                        title: '4.8',
                        subtitle: 'Ratings',
                        textcolor: Colors.black),
                    SizedBox(
                      width: 40,
                    ),
                    Cards(
                        colorname: Theme.of(context).colorScheme.primary,
                        imgname: 'assets/img/lostjobs2.png',
                        title: '5',
                        subtitle: 'Lost Jobs',
                        textcolor: Colors.black)
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Latest Requests',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          RequestCard(
            username: 'User name',
            location: 'city, district · distance(10km)',
            time: '00:40',
            service: 'Fan installation',
            price: '300/-',
            urgencyLabel: 'Immediate',
            urgencyColor: Colors.red,
            onAccept: () {
              // handle tap
            },
          ),
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final Color colorname;
  final String imgname;
  final String title;
  final String subtitle;
  final Color textcolor;

  const Cards({
    super.key,
    required this.colorname,
    required this.imgname,
    required this.title,
    required this.subtitle,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 150,
      decoration: BoxDecoration(
        color: colorname,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          Transform.rotate(
            angle: 0.5,
            child: Container(
              height: 41,
              width: 34,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset(
                  imgname,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: textcolor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                subtitle,
                style: TextStyle(
                    color: textcolor,
                    fontSize: 10,
                    fontWeight: FontWeight.w600),
              )
            ],
          )
        ],
      ),
    );
  }
}
