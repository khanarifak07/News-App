import 'package:flutter/material.dart';
import 'package:news_app/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemProvider>(context);
    return Scaffold(
      body: Center(
        child: SwitchListTile(
          title: const Text(
            "Theme",
          ),
          secondary: Icon(
            themeState.getDarkTheme
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined,
          ),
          value: themeState.getDarkTheme,
          onChanged: (bool value) {
            setState(() {
              themeState.setDarkTheme = value;
            });
          },
        ),
      ),
    );
  }
}
