import 'package:emergencyapp/Provider/ProviderData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class Offline extends StatefulWidget {
  const Offline({super.key});

  @override
  State<Offline> createState() => _OfflineState();
}

class _OfflineState extends State<Offline> {
  List questions = [
    {
      'question': [
        'Что является основной причиной землетрясений?',
        'What is the main cause of earthquakes?',
        'Ýer titremeleriniň esasy sebäbi näme?',
      ],
      'answer': [
        'Причиной землетрясения является быстрое смещение участка литосферы (литосферных плит) как целого в момент релаксации (разрядки) упругой деформации напряжённых пород в очаге землетрясения.',
        'The cause of an earthquake is the rapid displacement of a section of the lithosphere (lithospheric plates) as a whole at the moment of relaxation (discharge) of the elastic deformation of stressed rocks in the earthquake source.',
        'Ýer titremesiniň sebäbi ýer titremesiniň çeşmesindäki stresli gaýalaryň elastik deformasiýasynyň dynç alýan pursatynda litosferanyň (litosfera plitalary) bir böleginiň çalt süýşmegi.',
      ],
    },
    {
      'question': [
        'Сколько по времени длится землетрясение?',
        'How long does an earthquake last?',
        'Ýer titremesi näçe wagt dowam eder?',
      ],
      'answer': [
        'Всего десяток сильных сотрясений разрушает все здание. В среднем землетрясение длится 5-20 с. Чем дольше длятся сотрясения, тем тяжелее повреждения.',
        'Just a dozen strong shaking destroys the entire building. On average, an earthquake lasts 5-20 s. The longer the concussions last, the more severe the damage.',
        'Diňe onlarça güýçli titremek binany weýran edýär. Orta hasap bilen ýer titremesi 5-20 sekunt dowam edýär. Aljyraňňylyk näçe uzak dowam etse, şonça-da uly zyýan bolýar.',
      ],
    },
    {
      'question': [
        'Что происходит перед землетрясением?',
        'What happens before an earthquake?',
        'Ýer titremesinden öň näme bolýar?',
      ],
      'answer': [
        'В настоящее время выделяют следующие явления, которые могут служить предвестниками землетрясений: форшоки, аномальные атмосферные явления, изменения уровня грунтовых вод, беспокойное поведение животных.',
        'Currently, the following phenomena are distinguished that can serve as harbingers of earthquakes: foreshocks, anomalous atmospheric phenomena, changes in the level of groundwater, restless behavior of animals.',
        'Häzirki wagtda ýer titremeleriň habarçysy bolup biljek aşakdaky hadysalar tapawutlanýar: deslapky barlaglar, anomal atmosfera hadysalary, ýerasty suwlaryň derejesiniň üýtgemegi, haýwanlaryň dyngysyz hereketleri.',
      ],
    },
    {
      'question': [
        'Как землетрясение влияет на здоровье человека?',
        'How does an earthquake affect human health?',
        'Ýertitremesi adamyň saglygyna nähili täsir edýär?',
      ],
      'answer': [
        'В момент землетрясения у человека начинает активно работать вегетативная нервная система, передает сайт Доктор Питер. Это приводит к учащению сердцебиения. Как работает "рептильный мозг"? По словам невролога, не все люди могут заранее ощутить приближение землетрясения, сделать подобное могут только чувствительные люди.',
        'At the moment of an earthquake, the autonomic nervous system begins to work actively in a person, the website Dr. Peter reports. This leads to an increase in heart rate. How does the "reptilian brain" work? According to the neurologist, not all people can feel the approach of an earthquake in advance, only sensitive people can do this.',
        'Doktor Piteriň habaryna görä, ýer titremesi wagtynda özbaşdak nerw ulgamy adamda işjeň işläp başlaýar. Bu ýürek urşunyň ýokarlanmagyna getirýär. "Süýrenijileriň beýni" nähili işleýär? Newrologyň pikiriçe, ýer titremesiniň ýakynlaşmagyny hemme adamlar duýup bilmeýärler, muny diňe duýgur adamlar edip biler.',
      ],
    },
    {
      'question': [
        'Сколько раз повторяется землетрясение?',
        'How many times does an earthquake repeat?',
        'Ýer titremesi näçe gezek gaýtalanýar?',
      ],
      'answer': [
        'Повторные землетрясения (афтершоки) случаются практически всегда, такова сущность этой природной стихии. Повторные толчки также НЕ ПОДДАЮТСЯ ПРОГНОЗУ. Ученые говорят, что афтершоки могут напоминать о себе и несколько недель подряд, и несколько месяцев.',
        'Repeated earthquakes (aftershocks) happen almost always, such is the essence of this natural element. Aftershocks are also UNPREDICTABLE. Scientists say that aftershocks can remind of themselves for several weeks in a row, and for several months.',
        'Gaýtalanýan ýer titremeler (ýer titremeler) hemişe diýen ýaly bolup geçýär, bu tebigy elementiň düýp manysy. Terser titremeleri hem DÜZGÜN. Alymlar ýer titremeleriň yzly-yzyna birnäçe hepde we birnäçe aýlap ýatlap biljekdigini aýdýarlar.',
      ],
    },
    {
      'question': [
        'Что нельзя делать в землетрясение?',
        'What not to do in an earthquake?',
        'Ýer titremesinde näme etmeli däl?',
      ],
      'answer': [
        'При первых толчках землетрясения встаньте в безопасном месте у внутренней стены, в углу, в дверном проеме, у опорной колонны, лягте в ванну. Залезьте под кровать или стол — они защитят вас от падающих предметов и обломков. Держитесь подальше от окон и тяжелой мебели. Не пользуйтесь лифтом.',
        'At the first shocks of an earthquake, stand in a safe place against the inner wall, in the corner, in the doorway, at the support column, lie down in the bath. Climb under a bed or table - they will protect you from falling objects and debris. Stay away from windows and heavy furniture. Do not use the elevator.',
        'Earthquakeer titremesiniň ilkinji zarbalarynda içki diwara, burçda, gapyda, direg sütüninde howpsuz ýerde duruň, hammamda ýatyň. Krowatyň ýa-da stoluň aşagyna çykyň - sizi ýykylan zatlardan we galyndylardan gorar. Penjirelerden we agyr mebellerden uzak duruň. Lift ulanmaň.',
      ],
    },
    {
      'question': [
        'Что является последствием землетрясений?',
        'What is the consequence of earthquakes?',
        'Ýer titremeleriň netijesi näme?',
      ],
      'answer': [
        '- разрушение или обрушение зданий, мостов и других сооружений; - затопления в результате прорывов водопроводов и теплотрасс; - пожары в результате разрушений нефтехранилищ и разрывов газопроводов; - повреждение транспортных средств, коммуникаций, линий энерго- и водоснабжения, канализационных труб.',
        '- destruction or collapse of buildings, bridges and other structures; - flooding as a result of breaks in water pipes and heating mains; - fires as a result of the destruction of oil storage facilities and ruptures of gas pipelines; - damage to vehicles, communications, power and water supply lines, sewer pipes.',
        '- binalaryň, köprüleriň we beýleki desgalaryň ýykylmagy ýa-da ýykylmagy; - suw turbalarynyň we ýyladyş geçirijileriniň kesilmegi netijesinde suw joşmagy; - nebit saklaýan desgalaryň weýran bolmagy we gaz turbalarynyň ýarylmagy netijesinde ýangynlar; - ulaglara, aragatnaşyk, elektrik we suw üpjünçilik liniýalaryna, lagym turbalaryna zeper ýetmegi.',
      ],
    },
    {
      'question': [
        'Где безопаснее находиться во время землетрясения?',
        'Where is the safest place to be during an earthquake?',
        'Ýer titremesi wagtynda iň howpsuz ýer nirede?',
      ],
      'answer': [
        'Если Вы вынужденно остались в помещении, то встаньте в безопасном месте: у внутренней стены, в углу, во внутреннем стенном проеме или у несущей опоры. Если возможно, спрячьтесь под стол – он защитит вас от падающих предметов и обломков. Держитесь подальше от окон и тяжелой мебели. Если с Вами дети – укройте их собой.',
        'If you are forced to stay indoors, then stand in a safe place: against an internal wall, in a corner, in an internal wall opening, or at a bearing support. If possible, hide under a table - it will protect you from falling objects and debris. Stay away from windows and heavy furniture. If you have children with you, cover them with yourself.',
        'Içerde galmaga mejbur bolsaňyz, howpsuz ýerde duruň: içerki diwara, burçda, içki diwar açylanda ýa-da podşipnikde. Mümkin bolsa, stoluň aşagynda gizläň - sizi ýykylan zatlardan we galyndylardan gorar. Penjirelerden we agyr mebellerden uzak duruň. Youanyňyzda çagalaryňyz bar bolsa, özüňiz bilen ýapyň.',
      ],
    },
    {
      'question': [
        'Сколько баллов землетрясение опасно?',
        'How many points is an earthquake dangerous?',
        'Ýer titremesi näçe balda howply?',
      ],
      'answer': [
        '10 баллов (уничтожающее) — разрушение многих зданий, трещины в грунтах до 1 м шириной. 11 баллов (катастрофа) — многочисленные трещины и рвы на земной поверхности, большие обвалы в горах. 12 баллов (сильная катастрофа) — значительные изменения рельефа местности.',
        '10 points (destructive) - the destruction of many buildings, cracks in the soil up to 1 m wide. 11 points (catastrophe) - numerous cracks and ditches on the earth\'s surface, large landslides in the mountains. 12 points (severe catastrophe) - significant changes in the terrain.',
        '10 nokat (weýran ediji) - köp binanyň weýran bolmagy, ini 1 metre çenli toprakdaky çatryklar. 11 nokat (betbagtçylyk) - ýer ýüzündäki köp sanly çatryklar we garymlar, daglarda uly süýşmeler. 12 bal (agyr betbagtçylyk) - ýerdäki möhüm üýtgeşmeler.',
      ],
    },
  ];
  List answers = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: answers.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Color(0xFF7AA874),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 1.37,
                          decoration: BoxDecoration(),
                          child: Consumer<ProviderData>(
                            builder: ((context, value, child) {
                              return Text(
                                '${answers[index]['question'][value.a]}',
                                textAlign: TextAlign.right,
                                style: TextStyle(color: Colors.white),
                              );
                            }),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Color(0xFF333333),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('lib/images/chatbot.png', width: 30),
                      const SizedBox(width: 10),
                      Container(
                          width: MediaQuery.of(context).size.width / 1.37,
                          decoration: BoxDecoration(),
                          child: Consumer<ProviderData>(
                            builder: ((context, value, child) {
                              return Text(
                                '${answers[index]['answer'][value.a]}',
                                style: TextStyle(color: Colors.white),
                              );
                            }),
                          )),
                    ],
                  ),
                ),
              ],
            );
          }),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: ListView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        answers.add(questions[index]);
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      decoration: BoxDecoration(
                          color: Color(0xFF333333),
                          borderRadius: BorderRadius.circular(10)),
                      child: Consumer<ProviderData>(
                        builder: ((context, value, child) {
                          return Text(
                              '${questions[index]['question'][value.a]}',
                              style: TextStyle(color: Colors.white));
                        }),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
