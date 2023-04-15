import 'package:flutter/material.dart';

import '../../entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: 'Hola Pepito!', 
    fromWho: FromWho.me),
    Message(text: 'Ya volviste del super?',
     fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    //
  }
}
