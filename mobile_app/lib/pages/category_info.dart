import 'package:emergencyapp/Widgets/page_up_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryInfo extends StatefulWidget {
  final String title;
  final String desc;
  const CategoryInfo({super.key, required this.title, required this.desc});

  @override
  State<CategoryInfo> createState() => _CategoryInfoState();
}

class _CategoryInfoState extends State<CategoryInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PageUpTitle(upTitle: widget.title),
                  const SizedBox(height: 20),
                  Text(widget.desc, style: TextStyle(fontSize: 17),)
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}