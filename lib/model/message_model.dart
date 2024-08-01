import 'package:chat_app/model/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message(
      {required this.isLiked,
      required this.sender,
      required this.text,
      required this.time,
      required this.unread});
}

final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/image2.jpg',
);
final User johan = User(
  id: 1,
  name: 'Johan',
  imageUrl: 'assets/images/image3.jpg',
);
final User lily = User(
  id: 2,
  name: 'Lily',
  imageUrl: 'assets/images/image4.jpg',
);
final User nany = User(
  id: 3,
  name: 'Oyazimxon',
  imageUrl: 'assets/images/image5.jpg',
);
final User lolo = User(
  id: 4,
  name: 'Lolo',
  imageUrl: 'assets/images/image2.jpg',
);
final User pepe = User(
  id: 5,
  name: 'Pepe',
  imageUrl: 'assets/images/image3.jpg',
);

List<User> favorate = [pepe, nany, lolo, lily, johan];

List<Message> chats = [


  Message(
    sender: pepe,
    time: '7:00 PM',
    text: 'How are you, my friend is coming?',
    isLiked: true,
    unread: true,     
  ),
  Message(
    sender: nany,
    time: '7:09 PM',
    text: 'How are you, let me help you?',
    isLiked: false,
    unread: true,     
  ),
  Message(
    sender: lolo,
    time: '7:00 PM',
    text: 'How are you, what are you doing?',
    isLiked: false,
    unread: false,     
  ),
  Message(
    sender: lily,
    time: '7:00 PM',
    text: 'Hoji is learing Eglish, I love him?',
    isLiked: true,
    unread: false,     
  ),
  Message(
    sender: johan,
    time: '7:00 PM',
    text: 'How are you??',
    isLiked: true,
    unread: true,     
  ),
  Message(
    sender: currentUser,
    time: '7:00 PM',
    text: 'Can you help me please',
    isLiked: true,
    unread: false,     
  ),


];



List<Message> messages = [


  Message(
    sender: pepe,
    time: '7:00 PM',
    text: 'How are you, my friend is coming?',
    isLiked: true,
    unread: true,     
  ),
  Message(
    sender: currentUser,
    time: '7:09 PM',
    text: 'How are you, let me help you?',
    isLiked: false,
    unread: true,     
  ),
  Message(
    sender: currentUser,
    time: '7:00 PM',
    text: 'How are you, what are you doing?',
    isLiked: false,
    unread: false,     
  ),
  Message(
    sender: currentUser,
    time: '7:00 PM',
    text: 'Hoji is learing Eglish, I love him?',
    isLiked: true,
    unread: false,     
  ),
  Message(
    sender: johan,
    time: '7:00 PM',
    text: 'How are you??',
    isLiked: true,
    unread: true,     
  ),
  Message(
    sender: currentUser,
    time: '7:00 PM',
    text: 'Can you help me please',
    isLiked: true,
    unread: false,     
  ),


];

