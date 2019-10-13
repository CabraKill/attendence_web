import 'package:attendence_web/consts/attendenceConsts.dart';
import 'package:bloc/bloc.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';

enum AttendenceEvent { getIn, getOut, sendReport }

class AttendenceBloc extends Bloc<AttendenceEvent, String> {
  List<String> estadosAnim = ["out","get_inside","inside","report"];
  int atualEstado = 0;
  /// `Possíveis estados:`
  ///
  /// out, inTime,inside,report
  @override
  String get initialState => estadosAnim[0];

  void goBack(BuildContext context) {
    Navigator.pop(context);
  }

  /// `Botão do ponto da cabuto`
  ///
  /// Recebe o estado atual e devolve o próximo configurado
  String nextAnimation(){
    if (atualEstado == 3)
        atualEstado = 0;
      else
        atualEstado++;
    
    return estadosAnim[atualEstado];
  }

  @override
  Stream<String> mapEventToState(AttendenceEvent event) async* {
    switch (event) {
      case AttendenceEvent.getIn:
        print("Estado  atual: $atualEstado || evento recebido: $event || text: ${estadosAnim[atualEstado]}");
        yield nextAnimation();
        break;
      case AttendenceEvent.getOut:
        break;
      case AttendenceEvent.sendReport:
        break;
    }
  }
}
