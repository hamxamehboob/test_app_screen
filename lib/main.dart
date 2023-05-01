import 'package:flutter/material.dart';

import 'button_widget/action_button_widget.dart';
import 'button_widget/logout_button_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDark = false;
  ThemeData lightTheme = ThemeData(brightness: Brightness.light);
  ThemeData darkTheme = ThemeData(brightness: Brightness.dark);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _isDark ? darkTheme : lightTheme,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 20, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            _isDark = !_isDark;
                          },
                        );
                      },
                      child: const Icon(Icons.dark_mode_outlined),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Colors.orange, shape: BoxShape.circle),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person_outline,
                      size: 40,
                      color: Colors.orange,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  ("John Doe"),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "john.doe@example.com",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 15, left: 50, right: 50),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    "Upgrade to PRO",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ActionButton(
                  label: "Privacy",
                  icon: Icons.privacy_tip_outlined,
                ),
                const ActionButton(
                  label: "Purchase History",
                  icon: Icons.history,
                ),
                const ActionButton(
                  label: "Help & Support",
                  icon: Icons.help_outline,
                ),
                const ActionButton(
                  label: "Settings",
                  icon: Icons.settings_outlined,
                ),
                const ActionButton(
                  label: "Invite a Friend",
                  icon: Icons.person_add_outlined,
                ),
                const LogOut(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
