import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelevery/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
        backgroundColor: Theme.of(context).colorScheme.background,
      body :Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text (
                    "Dark Mode",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                ),
                CupertinoSwitch(
                  value: Provider.of<ThemeProvider>(context,listen: false)
                  .isDarkMode,
                  onChanged: (value) =>
                      Provider.of<ThemeProvider>(context,listen: false)
                  .toggleTheme(),
                )
              ],
            ),
          )],
      )
    );
  }
}
