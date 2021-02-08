import 'package:chat_app/model/conversion.dart';
import 'package:chat_app/model/message.dart';
import 'package:flutter/material.dart';

class Chat2 extends StatefulWidget {
  final Conversion conversation;
  final String name;
  Chat2(this.conversation,this.name);
  @override
  _Chat2State createState() => _Chat2State();
}

class _Chat2State extends State<Chat2> {
  final _key = GlobalKey<FormState>();
  final TextEditingController _messageController = TextEditingController();

  LinearGradient _gradient = LinearGradient(
    colors: [
      Color(0xFFef1385),
      Color(0xFFf12280),
      Color(0XFFf63d76),
      Color(0xFFf84f70)
    ],
    stops: [0.2, 0.4, 0.6, 0.8],
  );

  @override
  void dispose() {
    // TODO: implement dispose

    _messageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFef1384),
                  Color(0xFFf12280),
                  Color(0XFFf63d76),
                  Color(0xFFf84f70)
                ],
                stops: [0.2, 0.4, 0.6, 0.8],
              ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){}),
            actions: [IconButton(icon: Icon(Icons.settings), onPressed: (){})],
            title: Text(
              widget.conversation.users[1].name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,

          ),
          body: _contentBody(),
        ),
      ],
    );
  }

 Widget _contentBody() {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
        Flexible(
          child: ListView.builder(
          itemCount: widget.conversation.messages.length,
          itemBuilder: (BuildContext context, int position) {
            if (widget.conversation.messages[position].sender.name == widget.name) {
              return _rightMessage(widget.conversation.messages[position]);
            } else
              return _leftMessage(widget.conversation.messages[position]);
          }
          ),
        ),
          _sendMessageForm(context),

        ],
      ),
    );
 }

  Widget _rightMessage(Message message) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Transform.translate(
                offset: Offset(32, 34),
                child: Text(
                  message.dateTime,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    message.sender.name,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    message.sender.phone,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: ExactAssetImage(message.sender.avatar)),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white.withOpacity(0.1)),
            child: Text(
              message.body,
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );;
  }
  Widget _leftMessage(Message message){
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: ExactAssetImage(message.sender.avatar)),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    message.receiver.name,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    message.receiver.phone,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              Transform.translate(
                offset: Offset(-32, 34),
                child: Text(
                  message.dateTime,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white.withOpacity(0.1)),
            child: Text(
              message.body,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
  Widget _sendMessageForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
      child: Form(
        key: _key,
        child: Stack(
          children: <Widget>[
            TextFormField(
              controller: _messageController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 24, right: 24),
                hintText: 'Write Message ....',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Colors.white,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Colors.white,
                    )),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusColor: Colors.white,
                fillColor: Colors.white,
                filled: true,
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {},
                child: Transform.translate(
                  offset: Offset(-8, 6),
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      gradient: _gradient,
                      shape: BoxShape.circle,
                    ),
                    child: Transform.translate(
                      offset: Offset(-1, 0),
                      child: Icon(
                        Icons.send,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
