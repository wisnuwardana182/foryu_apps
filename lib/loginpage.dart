import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foryu_apps/signup.dart';
import 'package:foryu_apps/dashboard.dart';
import 'package:foryu_apps/main.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 30.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final label1 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Email',
        style: TextStyle(color: Colors.black),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );

    final label2 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Password',
        style: TextStyle(color: Colors.black),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onPressed: () {},
        padding: EdgeInsets.all(12),
        color: Colors.yellow[700],
        child: Text('SIGN IN', style: TextStyle(color: Colors.black)),
      ),
    );

    final signup = FlatButton(
      child: Text(
        'Don\'t have account? Sign Up',
        style: TextStyle(color: Colors.black87),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignupPage()),
        );
      },
    );

    final copyright = Container(
      padding: EdgeInsets.only(top: 160.0),
      child: Text(
        'Copyright © 2021 Foryu.',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black45),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 220.0),
          children: <Widget>[
            logo,
            SizedBox(height: 40.0),
            label1,
            email,
            SizedBox(height: 8.0),
            label2,
            password,
            SizedBox(height: 24.0),
            loginButton,
            signup,
            copyright,
          ],
        ),
      ),
    );
  }
}
