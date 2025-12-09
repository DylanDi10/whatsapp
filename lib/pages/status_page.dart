import 'package:flutter/material.dart';
import 'package:whatsappg14/widgets/item_satus_widget.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        itemStatusWidget(isCabecera:true),
        Container(
          padding: EdgeInsets.all(4),
          width: double.infinity,
          alignment: Alignment.center,
          color: Colors.grey.shade200,
          child: Text("Actualizaciones recientes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontSize:16
              )),
        ),
        itemStatusWidget(),
        itemStatusWidget(),
        itemStatusWidget(),
        itemStatusWidget(),
        itemStatusWidget(),
        itemStatusWidget(),
        itemStatusWidget(),
      ],
    );
  }
}
