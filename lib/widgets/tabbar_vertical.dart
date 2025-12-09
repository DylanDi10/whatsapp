import 'package:flutter/material.dart';

class TabbarVertical extends StatefulWidget {
  TabbarVertical({super.key});

  @override
  State<TabbarVertical> createState() => _TabbarVerticalState();
}

class _TabbarVerticalState extends State<TabbarVertical> {
List<String> titulos = ["Noticias", "Mensajes", "Ajustes"];
int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tab bar vertical")),
      body: Row(
        children: [
          Container(
            width: 120,
            color: Colors.grey,
            child: Column(
              children: List.generate(titulos.length, (index) {
                return ListTile(title: Text(titulos[index]),
                selected: selectedIndex == index,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                
                );
              }),
            ),
          ),
          Expanded(
            child: Center(child: Text("Vista ${titulos[selectedIndex]}")),
          ),
        ],
      ),
    );
  }
}