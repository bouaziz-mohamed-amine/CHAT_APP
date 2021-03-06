import 'package:chat_app/chat_1/tabs/inbox.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController _tabController ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
        ),
        Positioned(
            bottom: 0,right: 0,left: 0,
            child: Container(
              width: double.infinity,height: MediaQuery.of(context).size.height*0.1,
              decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft:Radius.circular(25) )),
            )
        ),
        CustomPaint(
          painter: chart(),
          child: Container(),
        ),
        Positioned(
          top: 0,
          bottom: MediaQuery.of(context).size.height*0.05,
          left: 0 ,
          right: 0,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              backgroundColor:Colors.transparent ,
              leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){}),
              actions: [IconButton(icon: Icon(Icons.menu), onPressed: (){}),IconButton(icon: Icon(Icons.search), onPressed: (){}),],
              title: Text("MESSAGES",style: TextStyle(fontWeight:FontWeight.bold,letterSpacing: 1.2 ),),
              centerTitle: true,
              bottom: TabBar(
                  unselectedLabelColor: Color(0xFFf76aa4),
                  indicator: BoxDecoration(),        //indicatorColor: Colors.transparent,

                  controller: _tabController,
                  tabs: [
                    Tab(text: 'INBOX',),
                    Tab(text: 'GROUPS',),
                    Tab(text: 'ONLINE(25)',),
                    Tab(text: 'HISTORY',),

                  ]),
            ),
            body: TabBarView(
                controller: _tabController,
                children: [
                  ConversationList(),
                  ConversationList(),
                  ConversationList(),
                  ConversationList(),
                ]),
          ),
        ),
      ],
    );
  }


}
class chart  extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = Paint();
    paint.color=Colors.pinkAccent;
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.1);
    path.quadraticBezierTo(size.width *0.5, size.height * 0.8, 0, size.height * 0.1);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}