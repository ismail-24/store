import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({
    super.key,
  });

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  Color iconColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(0),
      color: iconColor,
      icon: const Icon(Icons.favorite),
      onPressed: () {
        setState(() {
          if (iconColor == Colors.grey) {
            iconColor = Colors.red;
          } else {
            iconColor = Colors.grey;
          }
        });
      },
    );
  }
}
