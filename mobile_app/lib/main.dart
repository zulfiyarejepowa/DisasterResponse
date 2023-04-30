import 'package:emergencyapp/Provider/ProviderData.dart';
import 'package:emergencyapp/pages/category_info.dart';
import 'package:emergencyapp/pages/chat_bot.dart';
import 'package:emergencyapp/pages/home_page.dart';
import 'package:emergencyapp/pages/intro_page.dart';
import 'package:emergencyapp/pages/safe_zones_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderData(),
      child: MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFFF1F1F1)
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => IntroPage(),
        '/HomePage': (context) => HomePage(),
        '/SafeZone': (context) => SafeZonesPage(),
        '/ChatBot': (context) => ChatBot(),
      },
    ),
    );
  }
}