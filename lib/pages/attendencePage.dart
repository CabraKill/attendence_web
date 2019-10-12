import 'package:attendence_web/blocs/attendenceBloc.dart';
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
          child: Center(
            child: Column(
              children: <Widget>[
                Text("Ponto aqui ^^"),
                BlocBuilder(
                  bloc: BlocProvider.of<AttendenceBloc>(context),
                  builder: (context, state) {
                    return FlatButton(
                      onPressed: () {
                        BlocProvider.of<AttendenceBloc>(context)
                            .dispatch(AttendenceEvent.getIn);
                      },
                      child: Container(
                            alignment: Alignment.center,
                            width: 400,
                            height: 400,
                            child: new FlareActor(
                              l,
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              animation: "get_inside",
                            ),
                          ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
