import 'package:flutter/material.dart';
import 'package:foryu_apps/loginpage.dart';

void main() => runApp(SignupPage());

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black
      ),
      home: Signup(),
    );
  }
}

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
        'Nama Lengkap',
        style: TextStyle(color: Colors.black),
      ),
    );

    final username = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );

    final label4 = Padding(
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

    final label7 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'No. Telepon',
        style: TextStyle(color: Colors.black),
      ),
    );

    final notelp = TextFormField(
      keyboardType: TextInputType.number,
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

    final label5 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Confirm Password',
        style: TextStyle(color: Colors.black),
      ),
    );

    final copassword = TextFormField(
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
        child: Text('SIGN UP', style: TextStyle(color: Colors.black)),
      ),
    );

    final signup = FlatButton(
      child: Text(
        'Already have account? Sign In',
        style: TextStyle(color: Colors.black87),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
    );

    final copyright = Container(
      padding: EdgeInsets.only(top: 50.0),
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
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 90.0),
          children: <Widget>[
            logo,
            SizedBox(height: 40.0),
            label1,
            username,
            label4,
            email,
            label7,
            notelp,
            SizedBox(height: 8.0),
            label2,
            password,
            label5,
            copassword,
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
