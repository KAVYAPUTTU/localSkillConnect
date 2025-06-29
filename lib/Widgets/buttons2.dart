import 'package:flutter/material.dart';

class Buttons2 extends StatelessWidget {
  final String hintText;
  final Widget? navigateName;     
  final VoidCallback? onTap;
  final double height;
  final double width;     

  const Buttons2({
    super.key,
    required this.hintText,
    this.navigateName,
    this.onTap, required this.height, required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          if (onTap != null) {
            onTap!(); 
          } else if (navigateName != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigateName!),
            );
          }
        },
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Center(
            child: Text(
              hintText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
               fontWeight: FontWeight.w600
              ),
            ),
          ),
        ),
      ),
    );
  }
}
