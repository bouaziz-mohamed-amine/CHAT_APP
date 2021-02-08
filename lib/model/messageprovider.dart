import 'conversion.dart';
import 'message.dart';
import 'user.dart';

class MessageProvider {


  static Conversion getConversation(){
    User user1 = User(
        name: 'Ahmad Alsodani',
        avatar: 'assets/shared/ahmad.png',
        phone: '0877-3323-6723');
    User user2 = User(
        name: 'Elise Remmi',
        avatar: 'assets/shared/ahmad.png',
        phone: '0877-3323-6723');
    return Conversion(users: [
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