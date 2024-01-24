import 'package:flutter/material.dart';
import 'package:newchat_app/screens/chat_tabs_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'SandeshApp',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            PopupMenuButton(
              iconSize: 35,
              color: Colors.white,
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Text('search'),
                ),
                const PopupMenuItem(
                  child: Text('New broadcast'),
                ),
                const PopupMenuItem(
                  child: Text('Linked device'),
                ),
                const PopupMenuItem(
                  child: Text('Starred message'),
                ),
                PopupMenuItem(
                  onTap: () async {},
                  child: const Text('Payments'),
                ),
                const PopupMenuItem(
                  child: Text('Settings'),
                ),
              ],
            )
          ],
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
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3.0,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        body: const TabBarView(children: [
          ChatTabScreen(),
          Tab(
            text: 'Status',
          ),
          Tab(
            text: 'Calls',
          )
        ]),
      ),
    );
  }
}
