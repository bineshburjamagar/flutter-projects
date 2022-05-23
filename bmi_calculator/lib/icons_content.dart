import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    Key? key,
    this.icon,
    this.label,
  }) : super(key: key);
  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: const Color(0xFFBD86ED),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label!,
          style: const TextStyle(color: Color(0xFFBD86ED)),
        ),
      ],
    );
  }
}
