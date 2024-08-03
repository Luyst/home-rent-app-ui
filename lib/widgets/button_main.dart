import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const LinearGradient blueOceanGradient = LinearGradient(
  colors: [
    Color.fromRGBO(160, 218, 251, 1), // rgba(160, 218, 251, 1)
    Color.fromRGBO(10, 142, 217, 1), // rgba(10, 142, 217, 1)
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

class ButtonIconMain extends StatelessWidget {
  final Icon icon;
  final int? size;
  final VoidCallback? onPressed; // Added callback for handling press

  const ButtonIconMain({required this.icon, this.onPressed, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size?.toDouble() ?? 48.0,
      width: size?.toDouble() ?? 48.0,
      decoration: BoxDecoration(
        gradient: blueOceanGradient,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: IconButton(
        onPressed: onPressed, // Use the onPressed callback
        icon: icon,
        padding: EdgeInsets.zero,
      ),
    );
  }
}
