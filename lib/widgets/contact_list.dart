import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: (){

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage(info[index]["profilePic"].toString()),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          info[index]["name"].toString(),
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        info[index]["message"].toString(),
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      trailing: Text(
                        info[index]["time"].toString(),
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: dividerColor,
                  indent: 85,
                )
              ],
            );
          }),
    );
  }
}
