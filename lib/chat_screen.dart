import 'package:chat_app/model/user_model.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
final User user;

    const ChatsScreen({super.key, required this.user});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(widget.user.name),),);
  }
}