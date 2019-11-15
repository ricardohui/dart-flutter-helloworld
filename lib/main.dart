import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'app.dart';
import 'package:provider/provider.dart';
import 'model/app_state_model.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    ChangeNotifierProvider<AppStateModel>(
      // NEW
      builder: (context) => AppStateModel()..loadProducts(),
      child: CupertinoStoreApp(), // NEW
    ),
  );
}
