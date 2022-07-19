import 'package:flutter/cupertino.dart';

navigatePush(BuildContext context, Widget widget){
  Navigator.push(context, CupertinoPageRoute(builder: (context) => widget));
}

navigatePop(BuildContext context, Widget widget){
  Navigator.pop(context, CupertinoPageRoute(builder: (context) => widget));
}

// navigatePushArguments(BuildContext context, Widget widget){
//   Navigator.pop(context, CupertinoPageRoute
//   (builder: (context) => widget, settings: RouteSettings(arguments: )));
// }