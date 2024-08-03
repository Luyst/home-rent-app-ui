import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardBest extends StatelessWidget {
  final String image;
  final String nameHouse;
  final String price;
  final int? bedroom;
  final int? bathroom;

  CardBest({
    required this.image,
    required this.nameHouse,
    required this.price,
    this.bedroom,
    this.bathroom,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 80,
        width: 305,
        margin: EdgeInsets.only(bottom: 16),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 8.0), // Khoảng cách giữa hình ảnh và văn bản
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    nameHouse,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Rp. $price/Year',
                    style: TextStyle(fontSize: 12, color: Colors.blue[600]),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.bed,
                                size: 12,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                'Bedrooms: $bedroom',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.bath,
                                size: 12,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 4.0),
                              Text(
                                'Bathrooms: $bathroom',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
