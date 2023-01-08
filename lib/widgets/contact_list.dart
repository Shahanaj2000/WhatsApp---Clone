import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsup/Screens/mobile_chat_screen.dart';
import 'package:whatsup/colors.dart';
import 'package:whatsup/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MobileScreenChst(),));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          info[index]['profilePic'].toString(),
                        ),
                        radius: 30,
                      ),
                      title: Text(
                        info[index]['name'].toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          info[index]['name'].toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                /*onst Divider(
                  color: dividerColor,
                  indent: 85,
                ),*/
              ],
            );
          }),
    );
  }
}
