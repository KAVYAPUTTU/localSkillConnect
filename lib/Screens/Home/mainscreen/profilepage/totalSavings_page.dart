import 'package:flutter/material.dart';

class TotalsavingsPage extends StatelessWidget {
  const TotalsavingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Total Savings',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 113,
              width: 323,
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
                  Text(
                    '\$500',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
             SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                boxes(boxtitle: 'Jobs Completed', count: '20', titlecolor: Colors.green,),
                SizedBox(
                  width: 20,
                ),
                boxes(boxtitle: 'Jobs Rejected', count: '8',titlecolor: Colors.red),         
              ],
            ),
             SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                boxes(boxtitle: 'Jobs Accepted', count: '40', titlecolor: Colors.blueAccent,),
                 SizedBox(
                  width: 20,
                ),
                boxes(boxtitle: 'Jobs Pending', count: '10',titlecolor: Colors.purple),         
              ],
            ),
            SizedBox(
              height: 20,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                boxes(boxtitle: 'Jobs In Progress', count: '10', titlecolor: Theme.of(context).colorScheme.primary,),               
              ],
            )
          ],
        ),
      ),
    );
  }
}

class boxes extends StatelessWidget {
  final String boxtitle;
  final String count;
  final Color titlecolor;
  const boxes({super.key, required this.boxtitle, required this.count, required this.titlecolor});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 75,
                width: 150,
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
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
              );
  }
}
