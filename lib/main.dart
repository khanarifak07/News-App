import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/const/theme_data.dart';
import 'package:news_app/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: Styles.themeData(true, context),
        home: const HomeScreen());
  }
}
