import 'package:flutter/material.dart';

class ChatsTab extends StatefulWidget {
  const ChatsTab({Key? key}) : super(key: key);

  @override
  _ChatsTabState createState() => _ChatsTabState();
}

class _ChatsTabState extends State<ChatsTab> {
  var nameList = [
    'Liam',
    'Noah',
    'Oliver',
    'Elijah',
    'William',
    'James',
    'Benjamin',
    'Lucas',
    'Robert',
    'Stephen',
    'Shawn',
    'Sterling',
    'Scott',
    'Sincere'
  ];
  var msgList = [
    '   Hi',
    '   Hello',
    '   How are you',
    '   I`m coming',
    '   where are you now?',
    '   How are you',
    '   Hi',
    '   Hello',
    '   How are you',
    '   Hello',
    '   How are you',
    '   I`m coming',
    '   where are you now?',
    '   hi'
  ];
  var imgList = [
    'images/pic1.jpg',
    'images/pic2.jpg',
    'images/pic3.jpg',
    'images/pic4.jpg',
    'images/pic1.jpg',
    'images/pic2.jpg',
    'images/pic3.jpg',
    'images/pic4.jpg',
    'images/pic1.jpg',
    'images/pic2.jpg',
    'images/pic3.jpg',
    'images/pic4.jpg',
    'images/pic3.jpg',
    'images/pic4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: nameList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  nameList[index],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Yesterday',
                  style: TextStyle(fontSize: 14, color: Colors.black38),
                ),
              ],
            ),
            subtitle: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.done_all,
                  color: Colors.blue,
                  size: 16,
                ),
                Text(
                  msgList[index],
                  style: const TextStyle(fontSize: 14, color: Colors.black38),
                ),
              ],
            ),
            // subtitle: Text(msgList[index]),
            leading: CircleAvatar(
              backgroundImage: AssetImage(imgList[index]),
              // child: GestureDetector(onTap: () {}),
            ),
          );
        },
      ),
    );
  }
}
