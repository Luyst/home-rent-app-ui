import 'package:flutter/material.dart';

const LinearGradient blueOceanGradient = LinearGradient(
  colors: [
    Color.fromRGBO(160, 218, 251, 1), // rgba(160, 218, 251, 1)
    Color.fromRGBO(10, 142, 217, 1), // rgba(10, 142, 217, 1)
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

class NavigationButton extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onPressed;

  const NavigationButton({
    super.key,
    required this.label,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: isActive
              ? blueOceanGradient
              : const LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isActive ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationButtonList extends StatefulWidget {
  final List<String> labels;

  const NavigationButtonList({super.key, required this.labels});

  @override
  _NavigationButtonListState createState() => _NavigationButtonListState();
}

class _NavigationButtonListState extends State<NavigationButtonList> {
  int activeButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(widget.labels.length, (index) {
            return NavigationButton(
              label: widget.labels[index],
              isActive: index == activeButtonIndex,
              onPressed: () {
                setState(() {
                  activeButtonIndex = index;
                });
              },
            );
          }),
        ),
      ),
    );
  }
}
