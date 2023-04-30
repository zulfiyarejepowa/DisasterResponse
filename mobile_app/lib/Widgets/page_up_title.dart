import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageUpTitle extends StatefulWidget {
  final String upTitle;
  const PageUpTitle({super.key, required this.upTitle});

  @override
  State<PageUpTitle> createState() => _PageUpTitleState();
}

class _PageUpTitleState extends State<PageUpTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Color(0xFF7AA874)),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF7AA874)),
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Text(
              '${widget.upTitle}',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color(0xFF333333),
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Divider(
          thickness: 3,
          color: Color(0xFF7AA874),
        ),
      ],
    );
  }
}
