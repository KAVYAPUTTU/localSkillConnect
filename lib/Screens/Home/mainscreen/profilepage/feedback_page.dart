import 'package:flutter/material.dart';
import 'package:localskillconnect/Widgets/feedbackcard.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reviews & Feedback',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey.shade200,
                  foregroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Doe',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    Text(
                      'Electrician (2-3 years)',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade800),
                    ),
                    Row(
                      children: [
                        Text(
                          '300 points',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset('assets/img/coin.png'),
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Reviews & Feedback',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            FeedbackCard(
                name: 'Ramesh',
                rating: 3.5,
                points: 3.5,
                time: '2 Days ago',
                review:
                    'Very professional, came on time and fixed my fan perfectly! Very professional, came on time and fixed my fan perfectly!'),
            FeedbackCard(
                name: 'Ramesh',
                rating: 3.5,
                points: 3.5,
                time: '2 Days ago',
                review:
                    'Very professional, came on time and fixed my fan perfectly! Very professional, came on time and fixed my fan perfectly!'),
            FeedbackCard(
                name: 'Ramesh',
                rating: 3.5,
                points: 3.5,
                time: '2 Days ago',
                review:
                    'Very professional, came on time and fixed my fan perfectly! Very professional, came on time and fixed my fan perfectly!')
          ],
        ),
      ),
    );
  }
}

