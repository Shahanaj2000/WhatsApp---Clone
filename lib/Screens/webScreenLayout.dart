import 'package:flutter/material.dart';
import 'package:whatsup/widgets/contact_list.dart';


class WebScreenLayOut extends StatelessWidget {
  const WebScreenLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              //Web Profile Bar
              //Web Search Bar
              ContactList(),
            ],
          ),
          //WEB SCREEN
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/backgroundImage.png"
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      )
    );
  }
}