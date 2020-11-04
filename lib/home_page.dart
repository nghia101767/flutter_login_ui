import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final account = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16),
        child: CircleAvatar(
          radius: 72,
          backgroundColor: Colors.transparent,
          backgroundImage: Image.asset("images/alucard.jpg").image,
        ),
      ),
    );
    final welcome = Padding(
      padding: EdgeInsets.all(8),
      child: Text("Welcome Nghia",
          style: TextStyle(fontSize: 28, color: Colors.white)),
    );
    final lorem = Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        "Lorem ipsum dolor sitLorem ipsum dolor sitLorem ipsum dolor sitLorem ipsum dolor sitLorem ipsum dolor sitLorem ipsum dolor sitLorem ipsum dolor sitLorem ipsum dolor sitLorem ipsum dolor sitLorem ipsum dolor sit",
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
    final logout = FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        color: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Log out"),
        ));
    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue, Colors.lightBlueAccent]),
      ),
      child: Column(
        children: [
          account,
          welcome,
          lorem,
          Spacer(),
          logout,
          SizedBox(height: 30)
        ],
      ),
    );
    return Scaffold(
        body: Container(
      child: body,
    ));
  }
}
