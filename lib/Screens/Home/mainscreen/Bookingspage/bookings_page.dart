import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/Bookingspage/job_completed_page.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/Bookingspage/job_rejected_page.dart';
import 'package:localskillconnect/Widgets/bookings_request_card.dart';


class BookingsPage extends StatefulWidget {
  const BookingsPage({super.key});

  @override
  State<BookingsPage> createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage> {
  DateTime? _selectedDate;
  String selectedValue = 'completed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookings',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: const [
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Text('Select Date:',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                  const SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () async {
                      DateTime? datePicked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2030),
                      );
                      if (datePicked != null) {
                        setState(() {
                          _selectedDate = datePicked;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 2,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.calendar_month_outlined,
                            color: Colors.grey),
                        const SizedBox(width: 5),
                        Text(
                          _selectedDate == null
                              ? ""
                              : DateFormat('dd MMM yyyy')
                                  .format(_selectedDate!),
                          style: const TextStyle(color: Colors.black),
                        ),
                        const SizedBox(width: 5),
                        const Icon(Icons.keyboard_arrow_down,
                            color: Colors.grey),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text('Sort By:',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                  const SizedBox(width: 5),
                  DropDown(
                    selectedValue: selectedValue,
                    onChanged: (String newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (selectedValue == 'completed') ...[
                    BookingsRequestCard(
                      username: 'User name',
                      location: 'city, district · distance(10km)',
                      service: 'Fan installation',
                      price: '300/-',
                      urgencyLabel: 'Scheduled',
                      urgencyColor: Colors.blueGrey,
                      statustext: 'Reject',
                      statusButtonColor:
                          Colors.red, 
                      backgroundColor: Colors.white,
                      onAccept: () {},
                      iconcolor: Colors.grey,
                      locationcolor: Colors.grey,
                       showstatusbutton: false,
                       onTap: () {
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>JobCompletedPage()));
                       },
                    ),
                    const SizedBox(height: 10),
                     BookingsRequestCard(
                      username: 'User name',
                      location: 'city, district · distance(10km)',
                      service: 'Fan installation',
                      price: '300/-',
                      urgencyLabel: 'Scheduled',
                      urgencyColor: Colors.blueGrey,
                      statustext: 'Reject',
                      statusButtonColor:
                          Colors.red, 
                      backgroundColor: Colors.white,
                      onAccept: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>JobCompletedPage()));
                      },
                      iconcolor: Colors.grey,
                      locationcolor: Colors.grey, showstatusbutton: false,
                    ),
                  ] else if (selectedValue == 'pending') ...[
                    BookingsRequestCard(
                      username: 'User name',
                      location: 'city, district · distance(10km)',
                      service: 'Fan installation',
                      price: '300/-',
                      urgencyLabel: 'Scheduled',
                      urgencyColor: Colors.blueGrey,
                      statustext: 'Start Job',
                      statusButtonColor:
                          Theme.of(context).colorScheme.primary, 
                      backgroundColor: Colors.white,
                      onAccept: () {},
                      iconcolor: Colors.grey,
                      locationcolor: Colors.grey, showstatusbutton: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    BookingsRequestCard(
                      username: 'User name',
                      location: 'city, district · distance(10km)',
                      service: 'Fan installation',
                      price: '300/-',
                      urgencyLabel: 'Scheduled',
                      urgencyColor: Colors.blueGrey,
                      statustext: 'Reject',
                      statusButtonColor:
                          Colors.red, 
                      backgroundColor: Colors.white,
                      onAccept: () {
                     showRejectionSheet(context);
                      },
                      iconcolor: Colors.grey,
                      locationcolor: Colors.grey, showstatusbutton: true,
                    ),
                  ] else if (selectedValue == 'rejected') ...[
                   BookingsRequestCard(
                      username: 'User name',
                      location: 'city, district · distance(10km)',
                      service: 'Fan installation',
                      price: '300/-',
                      urgencyLabel: 'Scheduled',
                      urgencyColor: Colors.blueGrey,
                      statustext: 'Reject',
                      statusButtonColor:
                          Colors.red, 
                      backgroundColor: Colors.white,
                      onAccept: () {
                       
                      },
                      iconcolor: Colors.grey,
                      locationcolor: Colors.grey, showstatusbutton: false,
                       onTap: () {
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>JobRejectedPage()));
                       },
                    ),
                    const SizedBox(height: 10),
                     BookingsRequestCard(
                      username: 'User name',
                      location: 'city, district · distance(10km)',
                      service: 'Fan installation',
                      price: '300/-',
                      urgencyLabel: 'Scheduled',
                      urgencyColor: Colors.blueGrey,
                      statustext: 'Reject',
                      statusButtonColor:
                          Colors.red, 
                      backgroundColor: Colors.white,
                      onAccept: () {},
                      iconcolor: Colors.grey,
                      locationcolor: Colors.grey, showstatusbutton: false,
                       onTap: () {
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>JobRejectedPage()));
                       },
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DropDown extends StatelessWidget {
  final String selectedValue;
  final ValueChanged<String> onChanged;

  const DropDown({
    super.key,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      width: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(6),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          isExpanded: true,
          icon: const Icon(Icons.keyboard_arrow_down,
              size: 20, color: Colors.grey),
          items: ['completed', 'pending', 'rejected']
              .map((String value) => DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(
                          fontSize: 13, color: Color(0xFF4F4F4F)),
                    ),
                  ))
              .toList(),
          onChanged: (String? newValue) {
            if (newValue != null) {
              onChanged(newValue);
            }
          },
        ),
      ),
    );
  }
}

void showRejectionSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
    ),
    builder: (context) {
      return Container(
        height: 400,
        color: Colors.white,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.close, color: Colors.red),
            SizedBox(height: 20,),
            SizedBox(width: 8),
            Text(
              'Rejection',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.red
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Explain the reason to reject this job?',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Reason goes here ...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.warning, color: Colors.amber, size: 20),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    'By rejecting this job your points deducted by 10.',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    onPressed: () {
                      // Handle reject logic
                    },
                    child: const Text('Reject',style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
