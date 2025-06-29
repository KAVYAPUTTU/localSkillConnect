import 'package:flutter/material.dart';

class PointshistoryPage extends StatelessWidget {
  const PointshistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Points History',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            PointsCard(
                imagePath: 'assets/img/pointsdeducted.png',
                title: 'Points deduced',
                subtitle: 'Due to your uncleanliness.Due to your uncleanliness',
                points: '-\$5',
                pointscolor: Colors.red),
            SizedBox(
              height: 20,
            ),
            PointsCard(
                imagePath: 'assets/img/pointsadded.png',
                title: 'Points Added',
                subtitle: 'Due to your time sense.',
                points: '+\$5',
                pointscolor: Colors.green)
          ],
        ),
      ),
    );
  }
}

class PointsCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String points;
  final Color pointscolor;
  const PointsCard(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subtitle,
      required this.points,
      required this.pointscolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 55,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(imagePath),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                )
              ],
            ),
            Spacer(),
            Text(
              points,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: pointscolor),
            )
          ],
        ),
      ),
    );
  }
}
