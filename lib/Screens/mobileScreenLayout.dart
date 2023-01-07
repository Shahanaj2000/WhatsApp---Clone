import 'package:flutter/material.dart';
import 'package:whatsup/colors.dart';
import 'package:whatsup/widgets/contact_list.dart';


class MobileScreenLayOut extends StatelessWidget {
  const MobileScreenLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            title: const Text(
              "WhatsApp",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: false,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt, color: Colors.grey,),
              ),

              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.grey,),
              ),

              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color: Colors.grey,),
              ),
            ],
            //! Tab Bars
            bottom: const TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 4,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              tabs: [

                Tab(text: 'CHATS',),
                Tab(text: 'STATUS',),
                Tab(text: 'CALLS',),

              ],
            ),
          ),
          body: const ContactList(),
        ),
      )
    );
  }
}