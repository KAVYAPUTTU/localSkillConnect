import 'package:flutter/material.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/homepage/referal_page.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/homepage/requests_page.dart';
import 'package:localskillconnect/Widgets/requests.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List imageList = [
  //   {"id": 1, "image_path": 'assets/img/carouselimg.jpg'},
  //   {"id": 2, "image_path": 'assets/img/carouselimg.jpg'},
  //   {"id": 3, "image_path": 'assets/img/carouselimg.jpg'},
  // ];

  // final CarouselController carouselController = CarouselController();
  // int currentIndex = 0;

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
            Icon(Icons.notifications, color: Colors.white),
            SizedBox(width: 20),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            // Stack(children: [
            //   InkWell(
            //     onTap: () {
            //       print(currentIndex);
            //     },
            //     child: CarouselSlider(
            //       items: imageList
            //           .map((item) => Image.asset(
            //                 item['image_path'],
            //                 fit: BoxFit.cover,
            //                 width: double.infinity,
            //               ))
            //           .toList(),
            //       carouselController: carouselController,
            //       options: CarouselOptions(
            //         autoPlay: true,
            //         aspectRatio: 2,
            //         viewportFraction: 1,
            //         onPageChanged: (index, reason) {
            //           setState(() {
            //             currentIndex = index;
            //           });
            //         },
            //       ),
            //     ),
            //   ),
            // ]),
            const SizedBox(height: 20),
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
                    SizedBox(width: 40),
                    Cards(
                      colorname: Colors.red,
                      imgname: 'assets/img/lostjobs.png',
                      title: '5',
                      subtitle: 'Lost Jobs',
                      textcolor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Cards(
                      colorname: Colors.yellow,
                      imgname: 'assets/img/rate.png',
                      title: '4.8',
                      subtitle: 'Ratings',
                      textcolor: Colors.black,
                    ),
                    const SizedBox(width: 40),
                    Cards(
                      colorname: Theme.of(context).colorScheme.primary,
                      imgname: 'assets/img/lostjobs2.png',
                      title: '5',
                      subtitle: 'Lost Jobs',
                      textcolor: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Today’s Remainders',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            RequestCard(
              username: 'User name',
              location: 'city, district · distance(10km)',
              time: '00:40',
              service: 'Fan installation',
              price: '300/-',
              urgencyLabel: 'Immediate',
              urgencyColor: Colors.red,
              onAccept: () {},
              backgroundColor: Colors.red.shade200,
              iconcolor: Colors.white,
              locationcolor: Colors.white,
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const RequestsPage()),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'View More',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_double_arrow_down,
                    size: 13,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                print("Navigating to ReferalPage...");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ReferalPage()),
                );
              },
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.deepPurpleAccent),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const ArrowCard(),
                    const SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Earn upto',
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          '\$ 500',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.purple,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'for every referral',
                          style: TextStyle(
                            fontSize: 10,
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Transform.rotate(
                        angle: 0.5,
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset('assets/img/referal.png'),
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
            const SizedBox(
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
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
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
            color: const Color.fromARGB(80, 139, 95, 252),
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
