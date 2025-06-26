import 'package:flutter/material.dart';

class DirectionsPage extends StatelessWidget {
  const DirectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.help_outline,size: 30,),
          )
        ],
      ),
      body: Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/img/map.jpg',
                fit: BoxFit.cover,
              )) ,
    );
  }
}