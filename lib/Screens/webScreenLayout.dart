import 'package:flutter/material.dart';
import 'package:whatsup/widgets/chat_list.dart';
import 'package:whatsup/widgets/contact_list.dart';
import 'package:whatsup/widgets/web_chat_app_bar.dart';
import 'package:whatsup/widgets/web_profile_bar.dart';
import 'package:whatsup/widgets/web_search_bar.dart';

class WebScreenLayOut extends StatelessWidget {
  const WebScreenLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                //Web Profile Bar
                WebProfileBar(),
                //Web Search Bar
                WebSearchBar(),
                //ContactList
                ContactList(),
              ],
            ),
          ),
        ),
        //WEB SCREEN

        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
                '/home/ubantu/Luminar_Nov/WhatsupUI/whatsup/assets/backgroundImage.png'),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: [
              //! CHAT APP BAR
              WebChatAppBar(),
              //! CHAT LIST
              Expanded(
                child: ChatList(),
              )
              //! MESSAGE INPUT BOX
            ],
          ),
        ),
      ],
    ));
  }
}
