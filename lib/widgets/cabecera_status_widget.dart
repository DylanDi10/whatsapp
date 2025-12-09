import 'package:flutter/material.dart';

class CabeceraStatusWidget extends StatelessWidget {
  const CabeceraStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            padding: EdgeInsets.all(1),
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 2),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.network(
                "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text("Mi estado"),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          subtitle: Text("Hace 27 minutos, 7:10 pm"),
          trailing: Icon(Icons.more_horiz),
        ),
      ]
    );
  }
}