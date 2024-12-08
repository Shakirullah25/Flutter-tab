import 'package:flutter/material.dart';

class TabBarViews extends StatelessWidget {
  const TabBarViews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textSize = MediaQuery.of(context).size.width * 0.07;
    return TabBarView(
      children: [
        Center(
          child: Text(
            "Home page",
            style: TextStyle(fontSize: textSize),
          ),
        ),
        Center(
          child: Text(
            "Info page",
            style: TextStyle(fontSize: textSize),
          ),
        ),
        Center(
          child: Text(
            "Settings page",
            style: TextStyle(fontSize: textSize),
          ),
        ),
        Center(
          child: Text(
            "Your Profile",
            style: TextStyle(fontSize: textSize),
          ),
        ),
      ],
    );
  }
}
