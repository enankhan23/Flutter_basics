import 'package:first_project/functions/authFunctions.dart';
import 'package:flutter/material.dart';

class Day24Authentication extends StatefulWidget {
  const Day24Authentication({super.key});

  @override
  State<Day24Authentication> createState() => _Day24AuthenticationState();
}

class _Day24AuthenticationState extends State<Day24Authentication> {
  final _formkey = GlobalKey<FormState>();
  bool islogin = false;
  String email = '';
  String password = '';
  String username = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email/Pass Auth'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Form(
        key: _formkey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !islogin
                  ? TextFormField(
                      key: ValueKey('username'),
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                      ),
                      validator: (value) {
                        if (value.toString().length < 3) {
                          return 'Username is so small';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          username = value!;
                        });
                      },
                    )
                  : Container(),
              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(
                  hintText: "Enter Email",
                ),
                validator: (value) {
                  if (!(value.toString().contains('@'))) {
                    return 'Not an email address';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key: ValueKey('password'),
                decoration: InputDecoration(
                  hintText: "Enter Password",
                ),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return 'Password is so small';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          _formkey.currentState!.save();
                          islogin?signin(email, password): signup(email, password);
                        }
                        
                      },
                      child: islogin ? Text('Login') : Text('Signup'))),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      islogin = !islogin;
                    });
                  },
                  child: islogin
                      ? Text("Don't have an account? sign up.")
                      : Text('Already signed up? Login.')),
            ],
          ),
        ),
      ),
    );
  }
}
