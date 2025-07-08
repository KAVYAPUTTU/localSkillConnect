import 'package:flutter/material.dart';

class TotalsavingsPage extends StatelessWidget {
  const TotalsavingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'Total Savings',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Total Savings',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  const Text(
                    '\$500',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
             const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Boxes(boxtitle: 'Jobs Completed', count: '20', titlecolor: Colors.green,),),
                SizedBox(
                  width: 20,
                ),
                Expanded(child: Boxes(boxtitle: 'Jobs Rejected', count: '8',titlecolor: Colors.red)),         
              ],
            ),
           const  SizedBox(
              height: 20,
            ),
           const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Boxes(boxtitle: 'Jobs Accepted', count: '40', titlecolor: Colors.blueAccent,)),
                 SizedBox(
                  width: 20,
                ),
                Expanded(child: Boxes(boxtitle: 'Jobs Pending', count: '10',titlecolor: Colors.purple)),         
              ],
            ),
            const SizedBox(
              height: 20,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Boxes(boxtitle: 'Jobs In Progress', count: '10', titlecolor: Theme.of(context).colorScheme.primary,),               
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Boxes extends StatelessWidget {
  final String boxtitle;
  final String count;
  final Color titlecolor;
  const Boxes({super.key, required this.boxtitle, required this.count, required this.titlecolor});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 90,
                width: 175,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 1)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  boxtitle,
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color:titlecolor ),
                ),
                Text(
                  count,
                  style:const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
              );
  }
}
