import 'package:flutter/material.dart';

class TabbarStatePage extends StatefulWidget {
  @override
  State<TabbarStatePage> createState() => _TabbarStatePageState();
}

class _TabbarStatePageState extends State<TabbarStatePage>
    with SingleTickerProviderStateMixin {
  List<String> titulos = ["Noticias", "Mensajes", "Ajustes"];

  late TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: titulos.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab dinamico"),
        bottom: TabBar(
          controller: _controller,
          tabs: titulos.map((elemento) => Center(child: Text(elemento))).toList(),
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: titulos
            .map((titulo) => Center(child: Text("Vista de $titulo")))
            .toList(),
      ),
    );
  }
}
