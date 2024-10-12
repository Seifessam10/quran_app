import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manger.dart';
import 'package:quran_app/core/colors_manger.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> tasbihList = [
    "سبحان الله", //1
    "الحمد لله", //2
    "الله أكبر", //3
    "لا إله إلا الله", //4
    "أستغفر الله", //5
    "اللهم صل وسلم على نبينا محمد", //6
    "لا حول ولا قوة إلا بالله", //7
    "سبحان الله وبحمده", //8
    "سبحان الله العظيم", //9
    "اللهم اغفر لي", //10
    "اللهم ارزقني", //11
    "اللهم ارحمني", //12
    "اللهم إني أسألك الجنة", //13
    "اللهم أعوذ بك من النار", //14
    "يا حي يا قيوم برحمتك أستغيث", //15
    "اللهم انصر المسلمين", //16
    "اللهم اشف مرضانا", //17
    "اللهم تب علينا", //18
    "اللهم لك الحمد كما ينبغي لجلال وجهك", //19
    "اللهم إني أعوذ بك من الهم والحزن", //20
    "اللهم إني أعوذ بك من العجز والكسل", //21
    "اللهم إني أعوذ بك من الجبن والبخل", //22
    "اللهم إني أعوذ بك من غلبة الدين وقهر الرجال", //23
    "اللهم اجعلني من التوابين", //24
    "اللهم اجعلني من المتطهرين", //25
    "اللهم إنك عفو تحب العفو فاعف عني", //26
    "اللهم زدني علما", //27
    "اللهم إني أسألك العفو والعافية", //28
    "اللهم إني أسألك علما نافعا", //29
    "اللهم إني أسألك رزقا طيبا", //30
    "اللهم إني أسألك عملا متقبلا", //31
    "اللهم إني أسألك الفردوس الأعلى", //32
    "اللهم ارحم والدي", //33
    "اللهم بارك لي في رزقي", //34
    "اللهم احفظني من كل سوء", //35
    "اللهم إني أسألك توبة نصوحا", //36
    "اللهم إني أسألك حسن الخاتمة", //37
    "اللهم اجعلني من الذاكرين", //38
    "اللهم اجعلني من الشاكرين", //39
    "اللهم اجعلني من الصابرين", //40
    "اللهم اغفر للمسلمين والمسلمات", //41
    "اللهم أصلح ذات بيننا", //42
    "اللهم آتنا في الدنيا حسنة", //43
    "اللهم قنا عذاب النار", //44
    "اللهم اجعل القرآن ربيع قلوبنا", //45
    "اللهم اجعلني من المتوكلين عليك", //46
    "اللهم ارزقني الصدق في القول والعمل", //47
    "اللهم إني أعوذ بك من شر ما خلقت", //48
    "اللهم إني أعوذ بك من فتنة المسيح الدجال", //49
    "اللهم إني أعوذ بك من المأثم والمغرم", //50
  ];
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image.asset(AssetsManger.headSebha,fit: BoxFit.fill,),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                AssetsManger.headSebha,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: AnimatedRotation(
                  turns: turns,
                  duration: const Duration(seconds: 1),
                  child: Image.asset(
                    AssetsManger.sebhaHeader,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: ColorsManger.sebhaCounterColor, shape: BoxShape.circle),
            padding: const EdgeInsets.all(10),
            child:
                Text('$count', style: Theme.of(context).textTheme.titleMedium),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsManger.goldColor),
              onPressed: () {
                setState(() {
                  turns += 1 / 8;
                });
                buttonTextChange();
              },
              child: Text(
                tasbihList[currentIndex],
                style:
                    const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              ))
        ],
      ),
    );
  }

  int count = 0;
  int currentIndex = 0;

  void buttonTextChange() {
    setState(() {
      count++;
      if (count == 33) {
        currentIndex = (currentIndex + 1) % tasbihList.length;
        // currentIndex = 49
        // currentIndex + 1  % 50
        // 50 % 50 = 0
        // to make sure that the index don't go out of the list
        count = 0;
      }
    });
  }
}
