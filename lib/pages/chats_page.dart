import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:whatsappg14/widgets/chat_widget.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        /*         Container(
          child: CachedNetworkImage(
            progressIndicatorBuilder: (context, url, progress) => Center(
              child: CircularProgressIndicator(value: progress.progress),
            ),
            imageUrl:
                "https://images.pexels.com/photos/31653068/pexels-photo-31653068.jpeg",
                imageBuilder: (context, imageProvider) => Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(image: DecorationImage(image: imageProvider)
                ),
          ),
        ),
        ), */
      ],
    );
  }
}
