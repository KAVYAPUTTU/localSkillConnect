import 'package:flutter/material.dart';
import 'package:localskillconnect/Widgets/jobCompletedCard.dart';

class JobCompletedPage extends StatelessWidget {
  const JobCompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.chevron_left, size: 30),
        ),
        title: const Text(
          'Bookings',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 20),
        ],
      ),
      body:const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
        child: JobCompletedCard(
          userName: 'User name',
          location: 'City, District · distance(10km)',
          amount: '\$300',
          service: 'Fan Installation',
          userId: '334567892876523',
          date: '06/06/25',
          time: '3:45 pm',
          duration: '45min',
          paymentMode: 'UPI',
          transactionId: '2345i599u2392i',
          paymentTime: '3:50 pm',
          paymentStatus: 'Successful',
          feedback:
              'Very professional, came on time and fixed my fan perfectly! Very professional, came on time and fixed my fan perfectly!',
          rating: 3,
          points: 20,
        ),
      ),
    );
  }
}

