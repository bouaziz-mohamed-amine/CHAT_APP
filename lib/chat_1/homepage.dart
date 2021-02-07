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
        CustomPaint(
          painter: chart(),
          child: Container(),
        ),
        Scaffold(
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
                _bodycontent(),
                _bodycontent(),
                _bodycontent(),
                _bodycontent(),
              ]),
        ),
      ],
    );
  }

Widget  _bodycontent() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.transparent,
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