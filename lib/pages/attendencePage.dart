import 'package:attendence_web/blocs/attendenceBloc.dart';
import 'package:attendence_web/consts/attendenceConsts.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

String l = "assets/flare/button.flr";

class AttendencePage extends StatefulWidget {
  AttendencePage({Key key}) : super(key: key);

  _AttendencePageState createState() => _AttendencePageState();
}

class _AttendencePageState extends State<AttendencePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ponto Cabuto"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              BlocBuilder(
                bloc: BlocProvider.of<AttendenceBloc>(context),
                builder: (context, state) {
                  //setState((){print("oi");});
                  return //Text("aqui: $state");
                      FlatButton(
                    onPressed: () {
                      BlocProvider.of<AttendenceBloc>(context)
                          .dispatch(AttendenceEvent.getIn);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 400,
                      height: 400,
                      child: new FlareActor(
                        attendenceButtonLocation,
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: state,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
