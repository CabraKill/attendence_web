import 'package:attendence_web/consts/attendenceConsts.dart';
import 'package:bloc/bloc.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'dart:html' as html; // importing the HTML proxying library and named it as html
import 'dart:js' as js; // importing the Javascript proxying library and named it as js



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
  String nextAnimation () {
    if(atualEstado == 0){
      //final flutterWebviewPlugin = new FlutterWebviewPlugin();

      //String jsLocation = "alert('oi ^^')";//navigator.geolocation.getCurrentPosition()
      //flutterWebviewPlugin.evalJavascript(jsLocation);//.then((b){print(b);});
      
      //js.context.callMethod("alert",["oi"]);
      //js.context.callMethod("alert('oi')");
      String b = "aqui vei";
      print(b);
    }
    if (atualEstado == 3)
      atualEstado = 0;
      else
        atualEstado++;
    //print("chegou ate aqui");
    
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
