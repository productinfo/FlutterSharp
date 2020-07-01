import 'dart:ffi';

import '../flutter_sharp_structs.dart';
import '../utils.dart';
import '../maui_flutter.dart';
import 'package:flutter/widgets.dart';

class OpacityWidgetParser extends WidgetParser {
  @override
  Widget parse(IFlutterObjectStruct fos, BuildContext buildContext) {
    var map = Pointer<SingleChildRenderObjectWidgetStruct>.fromAddress(fos.handle.address).ref;
    return null;
    //TODO: implement
    // return Opacity(
    //   opacity: map["opacity"],
    //   alwaysIncludeSemantics: map.containsKey("alwaysIncludeSemantics")
    //       ? map["alwaysIncludeSemantics"]
    //       : false,
    //   child: DynamicWidgetBuilder.buildFromMap(
    //       map["child"], buildContext),
    // );
  }

  @override
  String get widgetName => "Opacity";
}
