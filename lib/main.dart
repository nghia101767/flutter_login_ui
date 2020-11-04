import 'package:flutter/material.dart';
import 'package:login_ui/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login UI",
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Nunito"),
      routes: {
        LoginPage.tag: (context) => LoginPage(),
        HomePage.tag: (context) => HomePage(),
      },
      initialRoute: LoginPage.tag,
    );
  }
}

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: "hero",
      child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          child: Image.asset("images/logo.png")),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      initialValue: "nghia101767@gmail.com",
      decoration: InputDecoration(
          hintText: "Email",
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );
    final password = TextFormField(
      obscureText: true,
      autofocus: false,
      initialValue: "12345678",
      decoration: InputDecoration(
          hintText: "Password",
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );
    final login = RaisedButton(
        onPressed: () {
          // Navigator.push(
          //     context,
          //     PageRouteBuilder(
          //         pageBuilder: (context, anim1, anim2) => HomePage()));
          Navigator.pushNamed(context, HomePage.tag);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.lightBlueAccent,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text("Log In", style: TextStyle(color: Colors.white)),
        ));
    final forgotLabel = FlatButton(
        onPressed: () => {},
        child:
            Text("Forgot password?", style: TextStyle(color: Colors.black54)));
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24, right: 24),
          children: [
            logo,
            SizedBox(height: 48),
            email,
            SizedBox(height: 8),
            password,
            SizedBox(height: 24),
            login,
            forgotLabel,
          ],
        ),
      ),
    );
  }
}
