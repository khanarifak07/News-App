import 'package:flutter/material.dart';
import 'package:news_app/provider/dark_theme_provider.dart';
import 'package:news_app/widgets/drawer_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: const DrawerWidget(),
       
      ),
    );
  }
}
