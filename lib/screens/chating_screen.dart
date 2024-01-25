import 'package:flutter/material.dart';
import 'package:newchat_app/screens/chat_tabs_screen.dart';

class ChatingScreen extends StatefulWidget {
  const ChatingScreen({super.key, required this.index});

  final int index;

  @override
  State<ChatingScreen> createState() => _ChatingScreenState();
}

class _ChatingScreenState extends State<ChatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 1.0),
              colors: <Color>[
                Color.fromARGB(255, 8, 224, 30),
                Color.fromARGB(255, 24, 10, 223),
              ],
              stops: <double>[0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.videocam,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.call,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
        leadingWidth: 20,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                chatlist[widget.index]['image'],
                height: 45,
                width: 45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chatlist[widget.index]['name'],
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Online',
                      style: TextStyle(
                          fontSize: 14, color: Colors.white.withOpacity(0.8)),
                    )
                  ]),
            )
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 108, 99, 109),
    );
  }
}
