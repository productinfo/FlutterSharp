import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../flutter_sharp_structs.dart';
import '../utils.dart';
import '../maui_flutter.dart';

class FloatingActionButtonParser extends WidgetParser {
  @override
  Widget parse(FlutterObjectStruct fos, BuildContext buildContext) {
    var map = Pointer<SingleChildRenderObjectWidgetStruct>.fromAddress(fos.handle.address).ref;
    final id = Utf8.fromUtf8(map.id);
    return FloatingActionButton(
      //TODO: Implement
        // tooltip: map["tooltip"],
        onPressed: () { 
            raiseMauiEvent(id,"onPressed",null);
         },
        child: DynamicWidgetBuilder.buildFromMap(map.child.ref, buildContext));
  }

  @override
  String get widgetName => "FloatingActionButton";
}
