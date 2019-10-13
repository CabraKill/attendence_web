import 'package:attendence_web/blocs/logingBloc.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context), //ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 200,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                  )),
              Text("login aqui"),
              FlatButton(
                onPressed: () {
                  //Navigator.pushNamed(context, "/third");
                  BlocProvider.of<LoginBloc>(context).goToAttendence(context);
                },
                child: Text("OK"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
