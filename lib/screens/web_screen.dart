import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';
import 'package:whatsapp_clone/widgets/web_chat_appbar.dart';
import 'package:whatsapp_clone/widgets/web_profile.dart';
import 'package:whatsapp_clone/widgets/web_search_bar.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                WebProfile(),
                WebSearchBar(),
                ContactList(),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(color: dividerColor),
            ),
            image: DecorationImage(
              image: AssetImage("assets/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              //Web chat appbar
              const WebChatAppbar(),
              //chat list
              const Expanded(child: ChatList()),
              //message field
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    color: dividerColor,
                  )),
                  color: chatBarMessage,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.emoji_emotions_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.attach_file),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 15,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: searchBarColor,
                            hintText: "Type a message",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  width: 0, style: BorderStyle.none),
                            ),
                            contentPadding: const EdgeInsets.only(left: 20)
                          ),
                          
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.mic),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
