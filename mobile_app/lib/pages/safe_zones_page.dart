import 'package:emergencyapp/Provider/ProviderData.dart';
import 'package:emergencyapp/Widgets/map_widget.dart';
import 'package:emergencyapp/Widgets/page_up_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';

class SafeZonesPage extends StatefulWidget {
  const SafeZonesPage({super.key});

  @override
  State<SafeZonesPage> createState() => _SafeZonesPageState();
}

class _SafeZonesPageState extends State<SafeZonesPage> {
  List safe = ['Безопасные зоны\nв нашем городе', 'Safe zones in\nour city', 'Şäherimizdäki howpsyz\nýerler'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Consumer<ProviderData>(
                  builder: ((context, value, child) {
                    return PageUpTitle(upTitle: '${safe[value.a]}');
                  })
                ),
                const SizedBox(height: 15),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: '1.',
                      style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'Туркменистан, г. Ашхабад, ул. 1972 (Ататюрк), д. 80',
                      style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 19,
                          fontWeight: FontWeight.bold)),
                ])),
                const SizedBox(height: 20),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: '2.',
                      style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'Туркменистан, г. Ашхабад, ул. Огузхана, 41, Ашхабад',
                      style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 19,
                          fontWeight: FontWeight.bold)),
                ])),
                const SizedBox(height: 20),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: '3.',
                      style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'Туркменистан, г. Ашхабад, Перекрёсток проспекта Махтумкули и улицы Таслама 20011',
                      style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 19,
                          fontWeight: FontWeight.bold)),
                ])),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: MapWidget(
                    firstLoc: 37.924543,
                    secondLoc: 58.3480142,
                    thirdLoc: 37.9446863,
                    forthLoc: 58.3668624,
                    fifthLoc: 37.9233366,
                    sixLoc: 58.2577072,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
