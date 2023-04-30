import 'package:emergencyapp/pages/offline.dart';
import 'package:emergencyapp/pages/online.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF7AA874),
          title: Text('AI CHAT BOT'),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Color(0xFF7AA874),
            tabs: [
              Tab(text: 'Offline'),
              Tab(text: 'Online'),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: TabBarView(children: [
            Offline(),
            Online()
          ]),
        ),
      ),
    );
  }
}
