import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

enum LoginEvent {ok, erro}
class LoginBloc extends Bloc<LoginEvent, int> {
  //LoginBloc(this.context);
  //BuildContext context;
  @override
  int get initialState => 0;

  void goToAttendence(BuildContext context){
    Navigator.pushNamed(context, "/second");
  }

  @override
  Stream<int> mapEventToState(LoginEvent event) async* {
    switch (event) {
      case LoginEvent.ok:
        yield currentState - 1;
        break;
      case LoginEvent.erro:
        yield currentState + 1;
        break;
    }
  }
}