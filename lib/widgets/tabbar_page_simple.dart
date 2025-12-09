import 'package:flutter/material.dart';

class TabbarPage extends StatelessWidget {
  const TabbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.blue,
            indicatorWeight: 4,
            labelColor: Colors.red,
            isScrollable: false,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.star), text: "Favorites"),
              Tab(icon: Icon(Icons.person), text: "Perfil"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Home")),
            Center(child: Text("Favorites")),
            Center(child: Text("Perfil")),
          ],
        ),
      ),
    );
  }
}
