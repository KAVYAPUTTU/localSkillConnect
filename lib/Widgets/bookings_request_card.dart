import 'package:flutter/material.dart';

class BookingsRequestCard extends StatelessWidget {
  final String username;
  final String location;
  final String statustext;
  final String service;
  final String price;
  final String urgencyLabel;
  final Color urgencyColor;
  final Color backgroundColor;
  final VoidCallback? onAccept;
  final VoidCallback? onTap;
  final Color iconcolor;
  final Color locationcolor;
  final Color statusButtonColor;
  final bool showstatusbutton;

  const BookingsRequestCard({
    super.key,
    required this.username,
    required this.location,
    required this.service,
    required this.price,
    required this.urgencyLabel,
    required this.urgencyColor,
    required this.backgroundColor,
    required this.statustext,
    required this.iconcolor,
    required this.locationcolor,
    this.onAccept,
    required this.statusButtonColor, required this.showstatusbutton, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
      
              // Header
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
                  const Text('Dt: 06/06/25',
                      style: TextStyle(fontSize: 11, color: Colors.grey)),
                ],
              ),
      
              const SizedBox(height: 4),
      
              // Location
              Row(
                children: [
                  Icon(Icons.location_on, size: 12, color: iconcolor),
                  const SizedBox(width: 4),
                  Text(
                    location,
                    style: TextStyle(fontSize: 11, color: locationcolor),
                  ),
                ],
              ),
      
              const SizedBox(height: 10),
      
              // Service
              Row(
                children: [
                  const Text('Service: ',
                      style: TextStyle(fontSize: 12, color: Colors.black)),
                  Text(
                    service,
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  )
                ],
              ),
      
              // Price
              Row(
                children: [
                  const Text('Price: ',
                      style: TextStyle(fontSize: 12, color: Colors.black)),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  )
                ],
              ),
      
              // Urgency
              Row(
                children: [
                  const Text('Urgency: ',
                      style: TextStyle(fontSize: 12, color: Colors.black)),
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
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      
              const SizedBox(height: 10),
              if(showstatusbutton)
               Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: onAccept,
                  child: Container(
                    height: 26,
                    width: 90,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: statusButtonColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        statustext,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
