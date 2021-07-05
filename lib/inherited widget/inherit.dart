import 'package:basics_flutter/inherited%20widget/data.dart';
import 'package:flutter/cupertino.dart';

class Inherit extends InheritedWidget{
  final Widget child;
  final Database database;

  Inherit({this.child, this.database});
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
  static Inherit of(BuildContext context){
    Inherit inherit = context.dependOnInheritedWidgetOfExactType();
    return inherit;
  }
}