import 'package:flutter/material.dart';

List<Map<String, dynamic>> chatlist = [
  {
    'name': "Mark Zuckerberg",
    'message': 'Hi',
    'image': 'assets/mark zuckerberg.jpeg'
  },
  {
    'name': 'Mrs',
    'message': 'helloooooooooooooooooooo',
    'image': 'assets/mark zuckerberg.jpeg'
  },
  {
    'name': 'Maneger',
    'message': 'morning.......................',
    'image': 'assets/mark zuckerberg.jpeg'
  },
  {
    'name': 'Bill gates',
    'message': 'Hiiiiii',
    'image': 'assets/mark zuckerberg.jpeg'
  },
  {'name': 'Raju', 'message': 'hi bro', 'image': 'assets/mark zuckerberg.jpeg'},
  {'name': 'sonu', 'message': 'Hello', 'image': 'assets/mark zuckerberg.jpeg'},
  {
    'name': 'abhijeet',
    'message': 'yes',
    'image': 'assets/mark zuckerberg.jpeg'
  },
  {'name': 'raj', 'message': 'okay', 'image': 'assets/mark zuckerberg.jpeg'}
];

class ChatTabScreen extends StatefulWidget {
  const ChatTabScreen({super.key});

  @override
  State<ChatTabScreen> createState() => _ChatTabScreenState();
}

class _ChatTabScreenState extends State<ChatTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(247, 224, 216, 216),
        body: ListView.builder(
          itemCount: chatlist.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(chatlist[index]['image']),
              ),
              title: Text(
                chatlist[index]['name'],
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(
                chatlist[index]['message'],
                style: TextStyle(color: Color.fromARGB(255, 6, 176, 43)),
              ),
              trailing: Text('9:10 pm'),
            );
          },
        ));
  }
}
