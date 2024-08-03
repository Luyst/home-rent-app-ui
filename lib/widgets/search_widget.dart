import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'button_main.dart';

class SearchWidget extends StatelessWidget {
  final ValueChanged<String>? onSearch;

  SearchWidget({this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Container(
        height: 50.0, // Đặt chiều cao cho Container bao bọc Row
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search address, or near you',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(247, 247, 247, 1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: onSearch,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ButtonIconMain(
              icon: Icon(
                FontAwesomeIcons.sliders,
                color: Colors.white,
                size: 16,
              ),
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
