import 'package:flutter/material.dart';
import 'package:whatsappg14/pages/chats_page.dart';
import 'package:whatsappg14/pages/status_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> titulos = ["Noticias", "Mensajes", "Ajustes"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xFF145f55),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          title: Text("WhatsApp"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("1")),
            ChatsPage(),
            StatusPage(),
            Center(child: Text("4")),
          ],
        ),
      ),
    );
  }
}
