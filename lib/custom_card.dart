import 'package:bmi_calculator/theme.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double? height;
  final double? width;
  final void Function()? onTap;
  final Widget child;
  final Color? color;
  const CustomCard({super.key, required this.child, this.onTap, this.height, this.width,  this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color ?? colors["card"],
        ),
          child:child
        ),
      ),
    );
  }
}
