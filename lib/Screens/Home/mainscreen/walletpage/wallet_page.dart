import 'package:flutter/material.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/walletpage/withdraw_page.dart';
import 'package:localskillconnect/Widgets/buttons.dart';
import 'package:localskillconnect/Widgets/buttons2.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  double Balance = 500;
  double slidervalue = 250;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Wallet',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 320,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Balance',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Center(
                            child: Text(
                              '\$ ${Balance.toStringAsFixed(0)}',
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFF2994A), // orange
                              ),
                            ),
                          ),
                          Slider(
                            activeColor: Colors.green,
                            value: slidervalue,
                            onChanged: (value) {
                              setState(() {
                                slidervalue = value;
                              });
                            },
                            min: 0,
                            max: Balance,
                          ),
                          Center(
                              child: Buttons2(
                            hintText: 'withdraw',
                            height: 27,
                            width: 230,
                            navigateName: WithdrawPage(),
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'History',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(Icons.mic),
                      prefixIconColor: Theme.of(context).colorScheme.secondary,
                      suffixIconColor: Theme.of(context).colorScheme.secondary,
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.grey.shade200, width: 1))),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    children: [
                      GestureDetector(
                         onTap: () => showReceiptBottomSheet(context),
                        child: PointsCard(
                        imagePath: 'assets/img/green.png',
                        title: 'Fan Installation',
                        subtitle: 'User ID : 12345678987654',
                        points: '+\$20',
                        pointscolor: Colors.green),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                  PointsCard(
                      imagePath: 'assets/img/green.png',
                      title: 'Fan Installation',
                      subtitle: 'User ID : 12345678987654',
                      points: '+\$20',
                      pointscolor: Colors.green),
                      SizedBox(
                        height: 10,
                      ),
                  PointsCard(
                      imagePath: 'assets/img/red.png',
                      title: 'UPI ID : 34371435479',
                      subtitle: 'Bank transfer',
                      points: '-\$20',
                      pointscolor: Colors.red)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PointsCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String points;
  final Color pointscolor;
  const PointsCard(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subtitle,
      required this.points,
      required this.pointscolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 65,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(imagePath),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                )
              ],
            ),
            Spacer(),
            Column(
              children: [
                Text(
                  points,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: pointscolor),
                ),
                Text(
                  '06/06/25',
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

void showReceiptBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(Icons.close, color: Colors.red),
              ),
              SizedBox(height: 20),
              Text(
                'Received',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
             Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                'Fan Installation',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'User ID : 12345678987654',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              ],
             ),
             Spacer(),
              Column(
                children: [
                    Text(
                '+\$ 20',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                '06/06/25',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                ),
              ),
                ],
              )
              ],
             ),
              SizedBox(height: 10),
            
              SizedBox(height: 20),
             Center(child: Buttons2(hintText: 'Share Receipt', height: 40, width: 300))
            ],
          ),
        ),
      );
    },
  );
}
