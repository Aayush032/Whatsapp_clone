import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class MyMessage extends StatelessWidget {
  final String message;
  final String date;
  const MyMessage({super.key, required this.message, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width-45),
        child: Card(
          elevation: 1,
          color: messageColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 20,
                  left: 10,
                  right: 30,
                ),
                child: Text(
                  message,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Positioned(
                  bottom: 4,
                  right: 10,
                  child: Row(
                    children: [
                      Text(
                        date,
                        style: const TextStyle(
                            fontSize: 13, color: Colors.white60),
                      ),
                      const SizedBox(width: 5,),
                      const Icon(
                        Icons.done_all,
                        size: 20,
                        color: Colors.blue,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
