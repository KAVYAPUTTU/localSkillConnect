import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class JobCompletedCard extends StatelessWidget {
  final String userName;
  final String location;
  final String amount;
  final String service;
  final String userId;
  final String date;
  final String time;
  final String duration;
  final String paymentMode;
  final String transactionId;
  final String paymentTime;
  final String paymentStatus;
  final String feedback;
  final double rating;
  final int points;

  const JobCompletedCard(
      {super.key,
      required this.userName,
      required this.location,
      required this.amount,
      required this.service,
      required this.userId,
      required this.date,
      required this.time,
      required this.duration,
      required this.paymentMode,
      required this.transactionId,
      required this.paymentTime,
      required this.paymentStatus,
      required this.feedback,
      required this.rating,
      required this.points});

  Widget buildRow(String label, String value, {Color? valueColor}) {
    return Row(
      children: [
        Text(
          '$label ',
          style: const TextStyle(fontSize: 12, color: Colors.black),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 12,
            color: valueColor ?? Colors.grey.shade800,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                'Job Completed',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              Icon(Icons.check_circle_outline, color: Colors.green),
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
                ),
                Text(
                  amount,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
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
                const SizedBox(height: 5),
                buildRow('Time:', time),
                const SizedBox(height: 5),
                buildRow('Duration:', duration),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text('Payment Info',
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
                buildRow('Amount Received:', amount),
                const SizedBox(height: 5),
                buildRow('Mode:', paymentMode),
                const SizedBox(height: 5),
                buildRow('Transaction ID:', transactionId),
                const SizedBox(height: 5),
                buildRow('Payment Time:', paymentTime),
                const SizedBox(height: 5),
                buildRow('Status:', paymentStatus, valueColor: Colors.green),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.grey.shade200, width: 1)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Rating - ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                        RatingBarIndicator(
                          rating: rating,
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 16.0,
                          direction: Axis.horizontal,
                        ),
                        Text(
                          '($rating)',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '+ $points points',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(height: 6),
          const Text('Feedback',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
          const SizedBox(height: 6),
          Text(
            feedback,
            style: const TextStyle(fontSize: 12, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
