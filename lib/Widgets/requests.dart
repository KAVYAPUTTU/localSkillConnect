import 'package:flutter/material.dart';

class RequestCard extends StatelessWidget {
  final String username;
  final String location;
  final String time;
  final String service;
  final String price;
  final String urgencyLabel;
  final Color urgencyColor;
  final Color backgroundColor;
  final VoidCallback? onAccept;
  final Color iconcolor;
  final Color locationcolor;

  const RequestCard({
    super.key,
    required this.username,
    required this.location,
    required this.time,
    required this.service,
    required this.price,
    required this.urgencyLabel,
    required this.urgencyColor,
    required this.backgroundColor,
    this.onAccept, required this.iconcolor, required this.locationcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  username,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.timer_sharp, size: 14),
                    Text(time, style: const TextStyle(fontSize: 12)),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: onAccept,
                      child: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Center(
                          child: Text(
                            'Accept',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),

            
            Row(
              children: [
                Icon(Icons.location_on, size: 11, color: iconcolor),
                Text(
                  location,
                  style: TextStyle(fontSize: 11, color: locationcolor),
                ),
              ],
            ),

            const SizedBox(height: 10),

           
            Row(
              children: [
                const Text(
                  'Service: ',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                Text(
                  service,
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                )
              ],
            ),

           
            Row(
              children: [
                const Text(
                  'Price: ',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                )
              ],
            ),

            
            Row(
              children: [
                const Text(
                  'Urgency: ',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                Container(
                  height: 18,
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    color: urgencyColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      urgencyLabel,
                      style: TextStyle(
                        color: urgencyColor,
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
