import 'package:emergencyapp/Provider/ProviderData.dart';
import 'package:emergencyapp/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  List lng = ['Russian', 'English', 'Turkmen'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7AA874),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: lng.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                              onPressed: () {
                                print('asdadsds');
                                Provider.of<ProviderData>(context,
                                        listen: false)
                                    .clickCount(index);
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                  builder: (context) => HomePage()
                                ));
                              },
                              child: Text('${lng[index]}',
                                  style: TextStyle(color: Color(0xFF333333)))),
                        ),
                      ),
                    );
                  })),
            ],
          ),
        ),
      ),
    );
  }
}
