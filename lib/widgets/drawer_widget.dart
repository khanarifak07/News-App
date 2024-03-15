import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:news_app/provider/dark_theme_provider.dart';
import 'package:news_app/widgets/vertical_spacing.dart';
import 'package:provider/provider.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemProvider>(context);

    return Drawer(
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Column(
                children: [
                  Flexible(
                    child: Image.asset(
                      "assets/images/newspaper.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                  const VerticalSpacing(20),
                  const Flexible(child: Text("News App"))
                ],
              ),
            ),
            KListTiles(
              title: "Home",
              icon: IconlyBold.home,
              ontap: () {},
            ),
            const KListTiles(
              title: 'Bookmarks',
              icon: IconlyBold.bookmark,
            ),
            const VerticalSpacing(20),
            const Divider(
              thickness: 1,
            ),
            SwitchListTile(
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
            )
          ],
        ),
      ),
    );
  }
}

class KListTiles extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? ontap;
  const KListTiles(
      {super.key, required this.title, required this.icon, this.ontap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 20),
      ),
      leading: Icon(icon),
      onTap: ontap,
    );
  }
}
