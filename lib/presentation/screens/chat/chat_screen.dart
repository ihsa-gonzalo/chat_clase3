import 'dart:math';

import 'package:flutter/material.dart';
import 'package:yes_no_app/entities/message.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPHRvtFUvNT9Rrpz2HE4gu05hPPg8m7DweCg&usqp=CAU',
              scale: 1,
            ),
          ),
        ),
        title: const Text('Fabito  '),
        centerTitle: false,
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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  List names = ['palabra 1', 'palabra 2', 'palabra 3','palabra 4'];
                  final _random = new Random();
                  var element = names[_random.nextInt(names.length)];

                  if (index % 2 == 0) {
                    Message message =
                        Message(text: element, fromWho: FromWho.hers);
                    return HerMessageBubble(message);
                  } else {
                    Message message =
                        Message(text: element, fromWho: FromWho.me);
                    return MyMessageBubble(message);
                  }
                },
              ),
            ),

            /// Caja de texto de mensajes
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
