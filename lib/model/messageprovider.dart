import 'conversion.dart';
import 'message.dart';
import 'user.dart';

class MessageProvider {


  static Conversion getConversation(){
    User user1 = User(
        name: 'Amine Bouaziz',
        avatar: 'assets/shared/amine.jpg',
        phone: '0877-3323-6723');
    User user2 = User(
        name: 'salma',
        avatar: 'assets/shared/nba.jpg',
        phone: '0877-3323-6723');
    return Conversion(users: [
      user1,
      user2
    ], messages: [
      Message(
        sender: user1,
        receiver: user2,
        dateTime: '23:35',
        body: 'Hi salma how are you',
      ),
      Message(
        sender: user2,
        receiver: user1,
        dateTime: '23:35',
        body: 'Hi my brother i am fine and you ?',
      ),
      Message(
        sender: user1,
        receiver: user2,
        dateTime: '23:35',
        body: 'fine thanks what are you doing?',
      ),
      Message(
        sender: user2,
        receiver: user1,
        dateTime: '23:35',
        body: 'i am doing my home work ',
      ),
      Message(
        sender: user1,
        receiver: user2,
        dateTime: '23:35',
        body: 'oh oh ',
      ),
      Message(
        sender: user1,
        receiver: user2,
        dateTime: '23:35',
        body: 'good bye',
      ),
    ]);
  }

  static List<Conversion> getConversations() {
    User user1 = User(
        name: 'Amine Bouaziz',
        avatar: 'assets/shared/amine.jpg',
        phone: '0877-3323-6723');
    User user2 = User(
        name: 'omaima',
        avatar: 'assets/shared/amine.jpg',
        phone: '0877-3323-6723');
    return [
      Conversion(users: [
        user1,
        user2
      ], messages: [
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user2,
          receiver: user1,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user2,
          receiver: user1,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
      ]),
      Conversion(users: [
        user1,
        user2
      ], messages: [
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
      ]),
      Conversion(users: [
        user1,
        user2
      ], messages: [
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
      ]),
      Conversion(users: [
        user1,
        user2
      ], messages: [
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
      ]),
      Conversion(users: [
        user1,
        user2
      ], messages: [
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
      ]),
      Conversion(users: [
        user1,
        user2
      ], messages: [
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
      ]),
      Conversion(users: [
        user1,
        user2
      ], messages: [
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
        Message(
          sender: user1,
          receiver: user2,
          dateTime: '23:35',
          body: 'Hi there how are you',
        ),
      ]),
    ];
  }
}