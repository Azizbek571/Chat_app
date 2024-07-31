import 'package:chat_app/widgets/categories_selector.dart';
import 'package:chat_app/widgets/favorite_contacts.dart';
import 'package:chat_app/widgets/menu_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

final Color backgroundColor = Color(0xFF112734);
final Color containerBackground = Color(0xFF283F4D);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          color: Colors.white,
          onPressed: () {},
          icon: Icon(Icons.menu),
          iconSize: 30.0,
        ),
        title: Text(
          'Chats',
          style: TextStyle(
              fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
              iconSize: 30,
              color: Colors.white,
              onPressed: () {},
              icon: Icon(Icons.search))
        ],
      ),
      backgroundColor: backgroundColor,
      body: Column(
        children: <Widget>[
          CategoriesSelector(),
          Expanded(
              child: Container(
            // color: containerBackground,
            decoration: BoxDecoration(
              color: containerBackground,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Favourite contacts",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1),
                      ),
                      IconButton(
                        color: Colors.white54,
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz),
                        iconSize: 40,
                      ),
                    ],
                  ),
                ),
                FavouriteContacts(),
                MenuChat()
              ],
            ),
          ),),
        ],
      ),
    );
  }
}
