import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screen/SignIn.dart';
import 'Screen/Splash_01.dart';

bool _count;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance().then((prefs) {
    _count = prefs.getBool("boolValue") ?? false;
    return runApp(MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
    ], child: MaterialApp(home: MyApp())));
  });
}

class Counter with ChangeNotifier, DiagnosticableTreeMixin {
  bool get count => _count;
  SharedPreferences prefs;

  void eng() async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setBool("boolValue", false);
    _count = false;
    notifyListeners();
  }

  void bangla() async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setBool("boolValue", true);
    _count = true;

    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: 'SplashScreen', routes: {
      'SplashScreen': (context) => SplashScreen(),
      'gg': (context) => SignIn(),
    });
  }
}
