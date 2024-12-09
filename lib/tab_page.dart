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
          title: const Text(
            "TAB",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child:
                Container(color: Colors.white, child: tabBarContent(context)),
          ),
        ),
        body: const TabBarViews(),
      ),
    );
  }

  TabBar tabBarContent(BuildContext context) {
    return const TabBar(
      labelColor: Colors.black,
      indicatorColor: Colors.deepPurple,
      unselectedLabelColor: Colors.black,
      tabs: [
        Tab(icon: Icon(Icons.home), text: "Home"),
        Tab(icon: Icon(Icons.info), text: "About"),
        Tab(icon: Icon(Icons.settings), text: "Settings"),
        Tab(icon: Icon(Icons.person_2_rounded), text: "Profile"),
      ],
    );
  }
}
