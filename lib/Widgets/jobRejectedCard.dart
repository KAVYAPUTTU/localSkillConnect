import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class Jobrejectedcard extends StatelessWidget {
  final String userName;
  final String location;
  final String service;
  final String userId;
  final String date;
  final int points;
  final String reason;

  const Jobrejectedcard(
      {super.key,
      required this.userName,
      required this.location,
      required this.service,
      required this.userId,
      required this.date,
      required this.points,
     required this.reason});

  Widget buildRow(String label, String value, {Color? valueColor}) {
    return Row(
      children: [
        Text(
          '$label ',
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
        Text(
          value,
          maxLines: 2,
          style: TextStyle(
            fontSize: 12,
            color: valueColor ?? Colors.black,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                'Job Rejected',
                maxLines: 2,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,),
              ),
              Icon(Icons.close_sharp, color: Colors.red),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade200, width: 1),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey.shade300,
                  foregroundColor: Colors.white,
                  child: const Icon(Icons.person, size: 40),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on,
                              size: 12, color: Colors.grey),
                          const SizedBox(width: 4),
                          Text(
                            location,
                            style: const TextStyle(
                                fontSize: 11, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text('Service Info',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey.shade200, width: 1)),
            ),
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                buildRow('Service:', service),
                const SizedBox(height: 5),
                buildRow('User ID:', userId),
                const SizedBox(height: 5),
                buildRow('Date:', date),
              ],
            ),
          ),
          const SizedBox(height: 6),
          const Text('Rejection Info',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
          const SizedBox(height: 6),
           Column(
            children: [
              buildRow('Reason:', reason),
              const SizedBox(height: 6,),
              buildRow('Points Deducted', '$points points',valueColor: Colors.red)
            ],
           )
        ],
      ),
    );
  }
}
