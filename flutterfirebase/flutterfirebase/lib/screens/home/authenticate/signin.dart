import 'package:flutter/material.dart';
import 'package:flutterfirebase/services/auth.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;

  SignIn({ this.toggleView });

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final Authservice _auth = Authservice();
  final _formKey = GlobalKey<FormState>();

  String email = "";
  String pass = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent[300],
        elevation: 0.0,
        title: Text("Sign in"),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {
              widget.toggleView();
            }, 
            icon: Icon(
              Icons.person
            ), 
            label: Text("Register"),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 21.1, horizontal: 51.1),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 21.1,),
              TextFormField(
                validator: (val) => val.isEmpty ? 'Enter an E-mail' : null,
                onChanged: (val) {
                setState(() {
                  email = val;
                });
              },
              ),
              SizedBox(height: 21.1),
              TextFormField(
                validator: (val) => val.length < 6 ? 'Password must be at least 6 character long' : null,
                onChanged: (val){
                pass = val;
              },),
              SizedBox(height: 21.1),
              RaisedButton(
                onPressed: () async {
                  if (_formKey.currentState.validate()){
                    dynamic result = await _auth.signInWithEmailAndPass(email, pass);
                    if (result == null){
                      setState(() {
                        error = "Could not Sign In";
                      });
                    }
                  }
                },
                color: Colors.lightGreenAccent[400],
                child: Text(
                  "Sign in",
                ),
              ),
              SizedBox(height: 11.1),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 11.1),
              ),
            ],
          )
        ),
      ),
    );
  }
}