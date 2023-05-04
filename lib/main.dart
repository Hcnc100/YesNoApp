


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yes_no_app/ui/screens/chat_screen/chat_screen.dart';

import 'inject/inject.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
 InjectAll.injectAll();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const ChatScreen(),
    );
  }
}