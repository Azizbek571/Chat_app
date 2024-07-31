import 'package:chat_app/chat_screen.dart';
import 'package:chat_app/model/message_model.dart';
import 'package:flutter/material.dart';

class FavouriteContacts extends StatefulWidget {
  const FavouriteContacts({super.key});

  @override
  State<FavouriteContacts> createState() => _FavouriteContactsState();
}

class _FavouriteContactsState extends State<FavouriteContacts> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        child: ListView.builder(
            padding: EdgeInsets.only(left: 15),
            itemCount: favorate.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector
              (
                 onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ChatsScreen(
                                    user: favorate[index],
                                  ),
                                  ),
                                  );},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage(favorate[index].imageUrl),
                        ),
                      ),
                      Text(
                        favorate[index].name,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.8),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
