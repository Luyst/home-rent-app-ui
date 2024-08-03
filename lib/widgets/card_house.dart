import 'package:flutter/material.dart';

class CardHouse extends StatelessWidget {
  final String image;
  final String nameHouse;
  final String address;
  final int? bedroom;
  final int? bathroom;

  CardHouse({
    required this.image,
    required this.nameHouse,
    required this.address,
    this.bedroom,
    this.bathroom,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        width: 222,
        height: 272,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              //Distance
              Positioned(
                top: 20,
                right: 20,
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.white60,
                      size: 12,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      '2.8 km',
                      style: TextStyle(color: Colors.white60, fontSize: 12),
                    ),
                  ]),
                ),
              ),

              // House information
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.black38, // Màu nền với độ trong suốt
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.0), // Bo góc dưới bên trái
                      bottomRight: Radius.circular(8.0), // Bo góc dưới bên phải
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nameHouse,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        address,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      if (bedroom != null)
                        Text(
                          'Bedrooms: $bedroom',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      if (bathroom != null)
                        Text(
                          'Bathrooms: $bathroom',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
