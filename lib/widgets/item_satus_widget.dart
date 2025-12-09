import 'package:flutter/material.dart';

class itemStatusWidget extends StatelessWidget {

bool isCabecera;
  itemStatusWidget({this.isCabecera=false});
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
                isCabecera?
                "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg":
                "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text("Mi estado"),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          subtitle: Text(isCabecera? "Hace 27 minutos, 7:10 pm": "Ayer, 15:30"),
          trailing: isCabecera? Icon(Icons.more_horiz): null,
        ),
      ]
    );
  }
}