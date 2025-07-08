import 'package:flutter/material.dart';

class ReferalPage extends StatelessWidget {
  const ReferalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E9), // Light background
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 30, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Row(
                        children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(Icons.arrow_back,
                              size: 28, color: Colors.white),
                        ),
                          Column(
                            children: [
                               const Text(
                          'Earn upto',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Text(
                              '\$ 500',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'Refer & Earn Now',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Text(
                          'for every referral',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                            ],
                          )
                        ],
                       )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -60,
                  left: 30,
                  right: 30,
                  child: Card(
                    elevation: 6,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Referral Earnings : \$500',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            '1 friend referred',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Refer & Earn Now >',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80),
            Text('Your Referrals'),
            SizedBox(
              height: 10,
            ),
            ReferralTile(
              name: 'Somu',
              date: '04 Jun',
              tagText: 'Earned \$200',
              tagColor: Colors.green.shade100,
              tagTextColor: Colors.green,
            ),
            ReferralTile(
              name: 'Ramu',
              date: '04 Jun',
              tagText: 'Pending',
              tagColor: Colors.orange.shade100,
              tagTextColor: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
//cards

class ReferralTile extends StatelessWidget {
  final String name;
  final String date;
  final String tagText;
  final Color tagColor;
  final Color tagTextColor;

  const ReferralTile({
    super.key,
    required this.name,
    required this.date,
    required this.tagText,
    required this.tagColor,
    required this.tagTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Theme.of(context).colorScheme.tertiary,
              child: const Icon(Icons.person, size: 40, color: Colors.white),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 14,
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        color: tagColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text(
                          tagText,
                          style: TextStyle(
                            color: tagTextColor,
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
