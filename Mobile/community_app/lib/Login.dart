import 'package:community_app/SignUp.dart';
import 'package:community_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:community_app/Dashboard.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _password;
  String _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Community"),
        backgroundColor: Colors.black54,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/cityView.jpg"),
              fit: BoxFit.cover
            )
          ),
            padding: EdgeInsets.all(20.0),
            child: Form(
                child: Column(children: <Widget>[
                  SizedBox(height: 20.0),
                  Text(
                    'Welcome',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    onSaved: (value) => _email = value,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: "Email Address")),
                  TextFormField(
                    onSaved: (value) => _password = value,
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Password")),
                    SizedBox(height: 20.0),
                  RaisedButton(
                    child: Text("LOGIN"),
                    textColor: Colors.white,
                    color: Colors.black54,
                    onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => Dashboard()));
                      }),
                  RaisedButton(
                    child: Text("No account? Sign up!"),
                    textColor: Colors.blue,
                    color: Colors.white54,
                    onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => SignUp()));
                      },

                )]),
    ))));
  }
}