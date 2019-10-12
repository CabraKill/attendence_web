import 'dart:js';

import 'package:attendence_web/blocs/attendenceBloc.dart';
import 'package:attendence_web/blocs/logingBloc.dart';
import 'package:attendence_web/pages/attendencePage.dart';
import 'package:attendence_web/pages/incrementOldPage.dart';
import 'package:attendence_web/pages/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

LoginBloc loginBloc = LoginBloc();
AttendenceBloc attendenceBloc = AttendenceBloc();
void main() => runApp(MaterialApp(
      title: 'Ponto Cabuto runApp',
      theme: ThemeData.dark(),
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) =>
            BlocProvider.value(value: loginBloc, child: LoginPage()),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) =>
            BlocProvider.value(value: attendenceBloc, child: AttendencePage()),
        '/third': (context) => MyApp()
      },
    ));
