import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:localskillconnect/Widgets/buttons.dart';

class MyprofilePage extends StatefulWidget {
  const MyprofilePage({super.key});

  @override
  State<MyprofilePage> createState() => _MyprofilePageState();
}

class _MyprofilePageState extends State<MyprofilePage> {
  String selectedValue = 'completed';
  final List<String> categories = ['Electrician', 'Plumber', 'Carpenter'];
  final List<String> gender = ['Male', 'Female', 'Others'];
  String selectedGender = 'Female';
  String selectedCategory = 'Electrician';

   DateTime? _selectedDate;

  final TextEditingController _dateController = TextEditingController();

  Future<void> _pickDate() async {
    final DateTime? datePicked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (datePicked != null) {
      setState(() {
        _selectedDate = datePicked;
        _dateController.text = DateFormat('dd/MM/yy').format(datePicked); // same as image
      });
    }
  }

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
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
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Full Name*',
                      labelStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary)),
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField(
                  value: selectedCategory,
                  decoration: InputDecoration(
                    labelText: 'Category*',
                    labelStyle: TextStyle(
                      fontSize: 16,
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
                          color:
                              Colors.grey.shade800, // Customize dropdown item text
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCategory = value!;
                    });
                  },
                ),
                 SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Phone Number*',
                      hintText: '+91 9876543210',
                      hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.tertiary),
                      labelStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary)),
                ),
                 SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'johndoe@gmail.com',
                      hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.tertiary),
                      labelText: 'Email*',
                      labelStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary)),
                ),
                 SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField(
                  value: selectedGender,
                  decoration: InputDecoration(
                    labelText: 'Gender*',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    border: UnderlineInputBorder(),
                  ),
                  icon: Icon(Icons.keyboard_arrow_down),
                  items: gender.map((String gen) {
                    return DropdownMenuItem<String>(
                      value: gen,
                      child: Text(
                        gen,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color:
                              Colors.grey.shade800, // Customize dropdown item text
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                 SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _dateController,
                  readOnly: true,
                  onTap: _pickDate,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Date of birth *',
                    labelStyle: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                    suffixIcon:
                        Icon(Icons.calendar_month_outlined, color: Colors.grey),
                  
                  ),
                ),
                 SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Address*',
                      labelStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary)),
                ),
                 SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'City*',
                      labelStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary)),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(child: Buttons(hintText: 'Save'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
