import 'package:flutter/material.dart';
import 'package:localskillconnect/Widgets/jobRejectedCard.dart';

class JobRejectedPage extends StatelessWidget {
  const JobRejectedPage({super.key});

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
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Jobrejectedcard(
            userName: 'user name',
            location: 'City, District · distance(10km)',
            service: 'Fan Installation',
            userId: '334567892876523',
            date: '06/06/25',
            points: 10,
            reason:
                'Due to some other important work ,I can’t able to do this work.'),
      ),
    );
  }
}
