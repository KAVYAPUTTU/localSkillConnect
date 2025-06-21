import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/homepage/referal_page.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    height: 200,
                    width: 370,
                    child: AnotherCarousel(
                      images: imglist
                          .map((imgPath) =>
                              Image.asset(imgPath, fit: BoxFit.contain))
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
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Cards(
                          colorname: Color(0xFF43A047),
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Latest Requests',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'View More',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    Icon(
                      Icons.keyboard_double_arrow_down,
                      size: 13,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                const Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Cards2(
                            imgname: 'assets/img/services.png',
                            title: 'My Services'),
                        SizedBox(
                          width: 30,
                        ),
                        Cards2(
                            imgname: 'assets/img/savings.png',
                            title: 'Total Savings'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Cards2(
                            imgname: 'assets/img/points.png',
                            title: 'Points History'),
                        SizedBox(
                          width: 30,
                        ),
                        Cards2(
                            imgname: 'assets/img/reviews.png',
                            title: 'Reviews & Feedback'),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ReferalPage())),
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.deepPurpleAccent),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        ArrowCard(),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Earn upto',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Theme.of(context).colorScheme.secondary,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '\$ 500',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'for every referral',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Theme.of(context).colorScheme.secondary,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Transform.rotate(
                            angle: 0.5,
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/img/referal.png'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
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
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Container(
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
      ),
    );
  }
}

class Cards2 extends StatelessWidget {
  final String imgname;
  final String title;
  const Cards2({super.key, required this.imgname, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 96,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Theme.of(context).colorScheme.tertiary)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imgname),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

class ArrowCard extends StatelessWidget {
  const ArrowCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ArrowClipper(),
      child: Container(
        height: 70,
        width: 180,
        decoration: BoxDecoration(
            color: Color.fromARGB(80, 139, 95, 252),
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Refer your friend',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 2),
            Text(
              'Invite now',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ArrowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double arrowWidth = 20;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width - arrowWidth, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - arrowWidth, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
