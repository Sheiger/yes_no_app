import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child:  CircleAvatar(
            backgroundImage: NetworkImage('https://elcomercio.pe/resizer/v2/DCX2SN34SND7BO4EEJUFCBZHTA.jpg?auth=8068d15d319b6ac95f15ddb75d38d892ba1f3c3a4208109927efaabb0ba2a522&width=1200&height=810&quality=90&smart=true'),
          ),
        ),
        title: const Text('My love <3'),
        //centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                return const MyMessageBubble();
              },)
            ),
            Text('Hola mundo')
          ],
        ),
      ),
    );
  }
}