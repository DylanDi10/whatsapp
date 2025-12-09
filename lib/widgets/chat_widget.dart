import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
          leading: SizedBox(
            height: 50,
            width: 50,
            child: CachedNetworkImage(
              imageUrl:
                  "https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg",
              progressIndicatorBuilder: (context, url, progress) => Center(//esto hace que mientras carga la imagen salga un circulo de progreso
                child: CircularProgressIndicator(
                  color: Colors.green,
                  value: progress.progress,
                  strokeWidth: 5,//grosor del circulo de progreso
                ),
              ),
              imageBuilder: (context, imageProvider) => CircleAvatar(backgroundImage: imageProvider,radius: 28),//esta parte es para darle forma a la imagen
            ),
          ),
          title: Text("Nombre de la persona"),
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          subtitle: Text(
            "Este es un mensaje de la persona que te escribe que tienes que prestar atencion",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("15:30"),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text("1", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        );
  }
}