import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String imagePath;

  const CustomAppBar({
    super.key,
    required this.imagePath,
  });

  @override
  CustomAppBarState createState() => CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(120.0);
}

class CustomAppBarState extends State<CustomAppBar> {
  String selectedButton = 'Todas';

  @override
  Widget build(BuildContext context) {
    return customBar();
  }

  PreferredSize customBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(120.0),
      child: Container(
        margin: const EdgeInsetsDirectional.only(start: 10.0, top: 75),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(width: 10.0),
            SizedBox(
              height: 35.0,
              width: 35.0,
              child: ClipOval(
                child: Image.asset(widget.imagePath),
              ),
            ),
            const SizedBox(width: 10.0),
            customButton('Todas'),
            const SizedBox(width: 10.0),
            customButton('Música'),
            const SizedBox(width: 10.0),
            customButton('Podcasts'),
          ],
        ),
      ),
    );
  }

  Widget customButton(String name) {
    bool isSelected = name == selectedButton;

    return TextButton(
      onPressed: () {
        setState(() {
          selectedButton = name;
        });
      },
      style: TextButton.styleFrom(
        backgroundColor: isSelected
            ? const Color.fromARGB(255, 8, 212, 80)
            : const Color.fromARGB(255, 36, 36, 36),
            minimumSize: const Size(80, 25)
      ),
      child: Text(
        name,
        style: TextStyle(
          color: isSelected ? Colors.black : Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 13
        ),
      ),
    );
  }
}
