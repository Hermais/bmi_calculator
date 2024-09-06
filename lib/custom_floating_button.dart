import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;

  const CustomFloatingButton({super.key, this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(

        onPressed: onPressed,
        icon: child,
      ),
    );
  }
}
