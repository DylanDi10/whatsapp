import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:whatsappg14/widgets/call_widget_page.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CallWidgetPage(),
        CallWidgetPage(),
        CallWidgetPage(),
        CallWidgetPage(),
        CallWidgetPage(),
        CallWidgetPage(),
        CallWidgetPage(),

      ],
    );

  }
}
