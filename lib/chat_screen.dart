import 'package:chat_app/main.dart';
import 'package:chat_app/model/message_model.dart';
import 'package:chat_app/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatsScreen extends StatefulWidget {
  final User user;

  const ChatsScreen({super.key, required this.user});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  _buildMessage(Message message, bool isMe) {
    return Container(
        margin: isMe
            ? EdgeInsets.only(
                top: 8,
                bottom: 8,
                left: 80,
              )
            : EdgeInsets.only(top: 8, left: 8, right: 80),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        decoration: BoxDecoration(
          color: isMe
              ? backgroundColor.withOpacity(0.5)
              : backgroundColor.withOpacity(0.3),
          borderRadius: isMe
              ? BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10.0),
                )
              : BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.time,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white24),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              message.text,
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2),
            )
          ],
        ));
  }

  _buildSendMessage() {
    return Container(
      height: 70,
      color: containerBackground,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.photo_library),
                iconSize: 25,
                color: Colors.white24,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Send your message',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.2,
                          color: Colors.white54)),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.send),
                iconSize: 25,
                color: Colors.white54,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title: Text(
          widget.user.name,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.2),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            iconSize: 40,
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: containerBackground,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.only(top: 20),
                    itemCount: chats.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;

                      return _buildMessage(message, isMe);
                    }),
              ),
            ),
          ),
          _buildSendMessage(),
        ],
      ),
    );
  }
}
