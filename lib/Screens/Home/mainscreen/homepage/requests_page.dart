import 'package:flutter/material.dart';
import 'package:localskillconnect/Widgets/requests.dart';

class RequestsPage extends StatelessWidget {
  const RequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          elevation: 2,
          foregroundColor: Colors.white,
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
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
            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              RequestCard(
                  username: 'User name',
                  location: 'city, district · distance(10km)',
                  time: '00:40',
                  service: 'Fan installation',
                  price: '300/-',
                  urgencyLabel: 'Immediate',
                  urgencyColor: Colors.red,
                  onAccept: () {
                    // handle tap
                  },
                  backgroundColor: Colors.white,
                  iconcolor: Theme.of(context).colorScheme.secondary,
                  locationcolor: Theme.of(context).colorScheme.secondary),
             const SizedBox(
                height: 30,
              ),
              RequestCard(
                username: 'User name',
                location: 'city, district · distance(10km)',
                time: '00:40',
                service: 'Fan installation',
                price: '300/-',
                urgencyLabel: 'Immediate',
                urgencyColor: Colors.blueGrey.shade200,
                onAccept: () {
                  // handle tap
                },
                backgroundColor: Colors.white,
                iconcolor: Theme.of(context).colorScheme.secondary,
                locationcolor: Theme.of(context).colorScheme.secondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
