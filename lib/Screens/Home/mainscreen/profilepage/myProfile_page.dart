import 'package:flutter/material.dart';

class MyprofilePage extends StatefulWidget {
  const MyprofilePage({super.key});

  @override
  State<MyprofilePage> createState() => _MyprofilePageState();
}

class _MyprofilePageState extends State<MyprofilePage> {
  final List<String> categories = ['Electrician', 'Plumber', 'Carpenter'];
  String selectedCategory = 'Electrician';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
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
            Center(
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.grey.shade300,
                foregroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 60,
                ),
              ),
            ),
            Center(
              child: Text(
                'Add Picture',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Full Name*',
                  labelStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.secondary)),
            ),
           DropdownButtonFormField(
  value: selectedCategory,
  decoration: InputDecoration(
    labelText: 'Category*',
    labelStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: Theme.of(context).colorScheme.secondary,
    ),
    border: UnderlineInputBorder(),
    
  ),
  icon: Icon(Icons.keyboard_arrow_down),
  items: categories.map((String category) {
    return DropdownMenuItem<String>(
      value: category,
      child: Text(
        category,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black87, // Customize dropdown item text
        ),
      ),
    );
  }).toList(),
  onChanged: (value) {
    setState(() {
      selectedCategory = value!;
    });
  },
)

          ],
        ),
      ),
    );
  }
}
