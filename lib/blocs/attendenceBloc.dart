import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

enum AttendenceEvent {getIn,getOut,sendReport}

class AttendenceBloc extends Bloc<AttendenceEvent, int> {

  /// `Possíveis estados:`
  /// 
  /// out, inTime,inside,report
  @override
  int get initialState => 0;

  void goBack(BuildContext context){
    Navigator.pop(context);
  }

  @override
  Stream<int> mapEventToState(AttendenceEvent event) async* {
    switch (event) {
      case AttendenceEvent.getIn:
        yield currentState - 1;
        break;
      case AttendenceEvent.getOut:
        yield currentState + 1;
        break;
      case AttendenceEvent.sendReport:
        break;
    }
  }
}