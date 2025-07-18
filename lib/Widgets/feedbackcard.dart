import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//feedback widget
class FeedbackCard extends StatelessWidget {
  final String name;
  final double rating;
  final double points;
  final String time;
  final String review;
  const FeedbackCard(
      {super.key,
      required this.name,
      required this.rating,
      required this.points,
      required this.time,
      required this.review});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.shade200,
                  foregroundColor: Colors.white,
                  child:const Icon(
                    Icons.person,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style:
                        const  TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        RatingBarIndicator(
                          rating: rating,
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 12.0,
                          direction: Axis.horizontal,
                        ),
                        Text(
                          '($points)',
                          style:const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
               const Spacer(),
                Text(
                  time,
                  style:const TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
           const SizedBox(
              height: 3,
            ),
            Text(
              review,
              style:const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
