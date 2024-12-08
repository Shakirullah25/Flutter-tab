import 'package:flutter/material.dart';
import 'package:flutter_tab/tab_bar_view.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Theme.of(context).secondaryHeaderColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "TAB",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: tabBarContent(context),
        ),
        body: TabBarViews(),
      ),
    );
  }

  TabBar tabBarContent(BuildContext context) {
    return TabBar(
      labelColor: Colors.white,
      unselectedLabelColor: Theme.of(context).secondaryHeaderColor,
      tabs: [
        Tab(icon: Icon(Icons.home), text: "Home"),
        Tab(icon: Icon(Icons.info), text: "About"),
        Tab(icon: Icon(Icons.settings), text: "Settings"),
        Tab(icon: Icon(Icons.person_2_rounded), text: "Profile"),
      ],
    );
  }
}
