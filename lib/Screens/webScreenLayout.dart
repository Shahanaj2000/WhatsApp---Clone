import 'package:flutter/material.dart';
import 'package:whatsup/widgets/contact_list.dart';
import 'package:whatsup/widgets/web_profile_bar.dart';


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
                children: [
                  //Web Profile Bar
                  WebProfileBar(),
                  //Web Search Bar
                  ContactList(),
                ],
              ),
            ),
          ),
          //WEB SCREEN
          
          Container(
            width: MediaQuery.of(context).size.width*0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('/home/ubantu/Luminar_Nov/WhatsupUI/whatsup/assets/backgroundImage.png'),
                fit: BoxFit.cover,
              )
            ),
          ),
        ],
      )
    );
  }
}