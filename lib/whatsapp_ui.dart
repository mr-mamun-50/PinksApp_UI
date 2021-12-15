import 'package:flutter/material.dart';

import 'chats_tab.dart';

class WhatsAppUI extends StatefulWidget {
  const WhatsAppUI({Key? key}) : super(key: key);

  @override
  _WhatsAppUIState createState() => _WhatsAppUIState();
}

class _WhatsAppUIState extends State<WhatsAppUI> {
  // Widget openPopup() {
  //   return PopupMenuButton(
  //     itemBuilder: (context) {
  //       return List.generate(
  //           3,
  //           (index) => const PopupMenuItem(
  //                 child: Text('Setting'),
  //               ));
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("PinksApp"),
          backgroundColor: Colors.pink,
          actions: [
            InkWell(
                child: const Icon(Icons.search),
                onTap: () {
                  // search functionality here...
                }),
            PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(child: Text('New Group')),
                  const PopupMenuItem(child: Text('New Broadcast')),
                  const PopupMenuItem(child: Text('Linked Devices')),
                  const PopupMenuItem(child: Text('Starred Messages')),
                  const PopupMenuItem(child: Text('Settings')),
                ];
              },
            ),
          ],
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                // iconMargin: EdgeInsets.all(100),
                child: Icon(Icons.camera_alt_rounded),
              ),
              Tab(
                child: Text(
                  'CHATS',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'STATUS',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'CALLS',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
            labelColor: Colors.white,
          ),
        ),
        body: const TabBarView(children: [
          Center(child: Text('Allow your phone camera')),
          ChatsTab(),
          // Center(child: Text('Allow your phone camera')),
          Center(child: Text('No status availabe')),
          Center(child: Text('Call history empty')),
        ]),
      ),
    );
  }
}
