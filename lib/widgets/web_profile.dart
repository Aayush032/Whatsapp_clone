import "package:flutter/material.dart";
import "package:whatsapp_clone/colors.dart";

class WebProfile extends StatelessWidget {
  const WebProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: webAppBarColor,
        border: Border(
          right: BorderSide(
            color: dividerColor,
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg"),
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
               IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
            ],
          )
      ],),
    );
  }
}