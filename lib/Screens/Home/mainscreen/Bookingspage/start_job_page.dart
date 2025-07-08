import 'package:flutter/material.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/Bookingspage/directions_page.dart';

class StartJobPage extends StatelessWidget {
  const StartJobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'Start Job',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/img/map.jpg',
                fit: BoxFit.cover,
              )),
          Positioned(
            top: 200,
            right: 80,
            child: GestureDetector(
              onTap: () => Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(builder: (context) =>const DirectionsPage()),
              ),
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
                child:const Center(
                  child: Text(
                    'Show Directions',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 254, 241),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              height: 450,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey.shade300,
                          foregroundColor: Colors.white,
                          child: const Icon(Icons.person, size: 40),
                        ),
                        const SizedBox(width: 10),
                       const Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'User Name',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on,
                                        size: 12, color: Colors.grey),
                                     SizedBox(width: 4),
                                    Text(
                                      'city, district · distance(10km)',
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          foregroundColor: Colors.white,
                          shape: const CircleBorder(),
                          elevation: 0,
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          child:const  Icon(
                            Icons.add,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        buildRow('Service: ', 'Fan installation'),
                        buildRow('price: ', '300/-')
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child:const Text('Call'),
                        )),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                            child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:const Color(0xFF4DB6AC),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: const Text('Help'),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                   const  Text('Enter random number from user'),
                    Row(
                      children: [otp(), otp(), otp(), otp()],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child:const  Center(
                        child: Text(
                          'Verify',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                   const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () => _showSuccessDialog(context),
                      child: Center(
                        child: Container(
                          height: 55,
                          width: 320,
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(26)),
                          child: Row(
                            children: [
                             const SizedBox(
                                width: 6,
                              ),
                              Container(
                                height: 45,
                                width: 65,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(26)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.double_arrow,
                                      size: 30,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    )
                                  ],
                                ),
                              ),
                             const SizedBox(
                                width: 20,
                              ),
                             const Text(
                                'Reached Drop',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget buildRow(String label, String value, {Color? valueColor}) {
  return Row(
    children: [
      const SizedBox(
        width: 10,
      ),
      Text(
        '$label ',
        style: const TextStyle(fontSize: 12, color: Colors.black),
      ),
      Text(
        value,
        style: TextStyle(
          fontSize: 12,
          color: valueColor ?? Colors.grey.shade500,
        ),
      ),
    ],
  );
}

Widget otp() {
  return SizedBox(
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 40,
        width: 40,
        color: Colors.white,
        child:const TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
      ),
    ),
  );
}

void _showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(dialogContext).pop(); // 👈 use dialogContext
                  },
                  child: const Icon(Icons.close, color: Colors.red),
                ),
              ],
            ),
            SizedBox(
                height: 40,
                width: 40,
                child: Image.asset('assets/img/success.png')),
            const SizedBox(height: 20),
            const Text(
              'Number Verified Successfully.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Job Completed',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.green,
              ),
            ),
          ],
        ),
      );
    },
  );
}
