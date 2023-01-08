import 'package:flutter/material.dart';
import 'package:whatsup/info.dart';
import 'package:whatsup/widgets/my_message_card.dart';
import 'package:whatsup/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          
          //My Messages -> Card
          return MyMesaaageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        } else {
          //Sender Message -> Card
          return SenderMessageCard(
            message: messages[index]['text'].toString(), 
            date: messages[index]['time'].toString(),
          );
        } 

        }   
      
    );
  }
}