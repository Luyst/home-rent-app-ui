import 'package:flutter/material.dart';

class Thumnail extends StatelessWidget {
  final String img;
  final int? size;

  Thumnail({required this.img, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size?.toDouble() ?? 72,
      width: size?.toDouble() ?? 72,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10), // Set the border radius
        child: Image.network(
          img,
          fit: BoxFit.cover, // Ensure the image covers the container
        ),
      ),
    );
  }
}
