import 'package:chat_app/model/conversion.dart';
import 'package:chat_app/model/messageprovider.dart';
import 'package:flutter/material.dart';

class ConversationList extends StatefulWidget {
  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {

      List<List<Conversion>> conversations=[
        MessageProvider.getConversations(),
        MessageProvider.getConversations(),
        MessageProvider.getConversations()];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ListView.builder(
          itemCount: conversations.length,
          itemBuilder:(context,position){return _bodycontent(position);} ,
      ),
    );
  }

  Widget _bodycontent(int position) {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(conversations[position].first.messages.last.dateTime,),
          ),
           ...List.generate(conversations[position].length, (index) {
             return Card(
               margin: EdgeInsets.only(bottom: 4),
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
               child: Padding(
                   padding: EdgeInsets.all(4),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                      Container(
             width: 50,
             height: 50,
             //margin: EdgeInsets.only(right: 24),
             decoration: BoxDecoration(
             image: DecorationImage(
               fit: BoxFit.cover,
             image: ExactAssetImage(conversations[position][index].users[0].avatar),
             ),
             shape: BoxShape.circle,
             )
             ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Text(
                           conversations[position][index].users[0].name,
                           style: TextStyle(
                            // color: _dartText,
                             fontWeight: FontWeight.w600,
                           ),
                         ),
                         SizedBox(height: 4,),
                         Text(
                           conversations[position][index].messages.last.body,
                           style: TextStyle(
                             //color: //_lightText,
                             fontSize: 12,
                             fontWeight: FontWeight.w300,
                           ),
                         ),
                       ],
                     ),
                     Spacer(flex: 2,),
                     Transform.translate(
                       offset: Offset(-9, -9),
                       child: Text(
                         conversations[position][index]
                             .messages
                             .last
                             .dateTime,
                         style: TextStyle(
                            // color: _pinkColor
                         ),
                       ),
                     ),
                   ],
                 ) ,
               ),

             );
           }),
        ],
      ),
    );
  }



}
