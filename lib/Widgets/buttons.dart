import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String hintText;
  final Widget? navigateName;     
  final VoidCallback? onTap;       

  const Buttons({
    super.key,
    required this.hintText,
    this.navigateName,
    this.onTap,
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
          width: 340,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Center(
            child: Text(
              hintText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
               fontWeight: FontWeight.w600
              ),
            ),
          ),
        ),
      ),
    );
  }
}
