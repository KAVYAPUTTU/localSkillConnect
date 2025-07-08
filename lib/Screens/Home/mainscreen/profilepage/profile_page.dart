import 'package:flutter/material.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/profilepage/changeLanguage_page.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/profilepage/changepassword_page.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/profilepage/feedback_page.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/profilepage/myProfile_page.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/profilepage/myServices_page.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/profilepage/pointsHistory_page.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/profilepage/totalSavings_page.dart';
import 'package:localskillconnect/Widgets/confirmationdialog.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey.shade200,
                      foregroundColor: Colors.white,
                      child:const  Icon(
                        Icons.person,
                        size: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       const Text(
                          'John Doe',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        Text(
                          'Electrician (2-3 years)',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade800),
                        ),
                        Row(
                          children: [
                           const Text(
                              '300 points',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset('assets/img/coin.png'),
                            )
                          ],
                        )
                      ],
                    ),
                   const Spacer(),
                   const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration:const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        'Account Overview',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                     const SizedBox(
                        height: 20,
                      ),
                      OptionCard(
                          imagePath: 'assets/img/profile2.png',
                          title: 'My Profile',
                          onTap: () {
                            Navigator.of(context, rootNavigator: true).push(
                              MaterialPageRoute(
                                  builder: (context) => const MyprofilePage()),
                            );
                          },
                          titlecolor: Colors.black),
                     const SizedBox(
                        height: 20,
                      ),
                      OptionCard(
                          imagePath: 'assets/img/myservices.png',
                          title: 'My Services',
                          onTap: () {
                            Navigator.of(context, rootNavigator: true).push(
                              MaterialPageRoute(
                                  builder: (context) =>const MyservicesPage()),
                            );
                          },
                          titlecolor: Colors.black),
                      const SizedBox(
                        height: 20,
                      ),
                      OptionCard(
                          imagePath: 'assets/img/mysavings.png',
                          title: 'Total Savings',
                          onTap: () {
                            Navigator.of(context, rootNavigator: true).push(
                              MaterialPageRoute(
                                  builder: (context) =>const TotalsavingsPage()),
                            );
                          },
                          titlecolor: Colors.black),
                      const SizedBox(
                        height: 20,
                      ),
                      OptionCard(
                          imagePath: 'assets/img/myreviews.png',
                          title: 'Reviews and Feedback',
                          onTap: () {
                            Navigator.of(context, rootNavigator: true).push(
                              MaterialPageRoute(
                                  builder: (context) =>const FeedbackPage()),
                            );
                          },
                          titlecolor: Colors.black),
                      const SizedBox(
                        height: 20,
                      ),
                      OptionCard(
                          imagePath: 'assets/img/mypoints.png',
                          title: 'Points History',
                          onTap: () {
                            Navigator.of(context, rootNavigator: true).push(
                              MaterialPageRoute(
                                  builder: (context) =>const PointshistoryPage()),
                            );
                          },
                          titlecolor: Colors.black),
                     const SizedBox(
                        height: 20,
                      ),
                      OptionCard(
                          imagePath: 'assets/img/mypassword.png',
                          title: 'Change Password',
                          onTap: () {
                            Navigator.of(context, rootNavigator: true)
                                .push(MaterialPageRoute(
                              builder: (context) =>const ChangepasswordPage(),
                            ));
                          },
                          titlecolor: Colors.black),
                     const SizedBox(
                        height: 20,
                      ),
                      OptionCard(
                          imagePath: 'assets/img/mylanguage.png',
                          title: 'Change Language',
                          onTap: () {
                            Navigator.of(context, rootNavigator: true).push(
                              MaterialPageRoute(
                                  builder: (context) =>const ChangelanguagePage()),
                            );
                          },
                          titlecolor: Colors.black),
                      const SizedBox(
                        height: 20,
                      ),
                      OptionCard(
                          imagePath: 'assets/img/rateit.png',
                          title: 'Rate this App',
                          onTap: () {},
                          titlecolor: Colors.black),
                     const SizedBox(
                        height: 20,
                      ),
                      OptionCard(
                          imagePath: 'assets/img/legal.png',
                          title: 'Legal & Policies',
                          onTap: () {},
                          titlecolor: Colors.black),
                     const SizedBox(
                        height: 20,
                      ),
                      OptionCard(
                        imagePath: 'assets/img/logout.png',
                        title: 'Log Out',
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext dialogContext) {
                              return ConfirmationDialog(
                                title: '',
                                message:
                                    'Are you sure you want to log out the account?',
                                confirmText: 'Log Out',
                                canceltext: 'Cancel',
                                onConfirm: () {
                                  Navigator.of(dialogContext)
                                      .pop(); // close dialog
                                  // Perform logout here
                                },
                              );
                            },
                          );
                        },
                        titlecolor: Colors.red,
                      ),
                     const SizedBox(
                        height: 20,
                      ),
                      OptionCard(
                        imagePath: 'assets/img/delete.png',
                        title: 'Delete Account',
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext dialogContext) {
                              return ConfirmationDialog(
                                title: '',
                                message:
                                    'Are you sure you want to delete the account?',
                                confirmText: 'Delete',
                                canceltext: 'Cancel',
                                onConfirm: () {
                                  Navigator.of(dialogContext)
                                      .pop(); // close dialog
                                  // Perform logout here
                                },
                              );
                            },
                          );
                        },
                        titlecolor: Colors.red,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//assets/img/rateit.png assets/img/delete.png assets/img/legal.png assets/img/logout.png assets/img/mylanguage.png assets/img/mypassword.png
class OptionCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback? onTap;
  final Color titlecolor;

  const OptionCard({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
    required this.titlecolor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // optional action
      child: Container(
        width: double.infinity,
        height: 36,
        decoration:const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Image.asset(imagePath),
            const SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: titlecolor,
              ),
            ),
            const Spacer(),
            const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
