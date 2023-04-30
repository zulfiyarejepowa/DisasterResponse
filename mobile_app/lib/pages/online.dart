import 'package:emergencyapp/Provider/ProviderData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class Online extends StatefulWidget {
  const Online({super.key});

  @override
  State<Online> createState() => _OnlineState();
}

class _OnlineState extends State<Online> {
  List onlineLang = ['Онлайн версию чата можете найти в нашем сайте по ссылке: emergency-rahimwws.vercel.app', 'An online version of the chat can be found on our website at the link: emergency-rahimwws.vercel.app', 'Çatyň online wersiýasyny websitemyzda ulanyp bilersiňiz: emergency-rahimwws.vercel.app'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProviderData>(builder: (context, value, child) {
        return Center(
          child: Text('${onlineLang[value.a]}'),
        );
      }),
    );
  }
}
