import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 2,
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Padding(
            padding: EdgeInsets.only(left: 10.0,top: 10),
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
         actions: [
          Icon(Icons.notifications,color: Colors.white,),
          SizedBox(
            width: 20,
          )
         ],
        ),
      ),
      body: const Center(child: Text('Content here')),
    );
  }
}
