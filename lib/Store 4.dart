import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Store4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('لم يعمل خيرا قط'),
      ),
      body: SingleChildScrollView(

        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffbcc3bb),
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('لم يعمل خيرا قط'),
              Image.asset("assets/images/stor4.png"),
              Text(
                'في يومٍ عاصف، وجوِّ شديد الحرارة، تقدّمت جنازةٌ مهيبة محمولة على الأكتاف، والذي باشر حملها وسار على إثرها هم ذريّة الميّت وأولاده، وقد ألقى الحزن بظلاله على الجميع.وكان من المتوقّع مع المشاعر الصادقة والأحاسيس المخلصة التي أبداها الحضور، أن يتمّ دفن الميّت وإكرامه في مثواه، لكننا نفاجأ بأنهم كانوا يتوجّهون بالجنازة إلى أتونٍ مشتعلٍ فيقذفونها فيه، لتلتهمها النيران وتحيلها إلى جثّة متفحّمة ، وبعد ذلك قاموا بأخذ ما بقي من الرّفات وسحقه حتى صار رماداً، ثم أخذوا هذا الرماد فرموا نصفه في البرّ، والنصف الآخر في البحر.',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'والمفارقة التي تثير العجب هنا، أن الحاضرين الذين باشروا هذا العمل القاسي في ظاهره، كانوا يرونه قمّة البرِّ والوفاء لصاحبه، ولم تخالج نفوسهم قطّ مشاعر الندم وتأنيب الضمير، وهنا يحقّ لنا أن نتساءل : ما الذي دفعهم إلى فعل ذلك ؟ وكيف برّروا لأنفسهم أن يُقدموا على فعلتهم الشنيعة ؟ ولماذا اختاروا هذه الكيفيّة العجيبة في التعامل مع تلك الجنازة ؟',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 10.0),
              Text("والمفارقة التي تثير العجب هنا، أن الحاضرين الذين باشروا هذا العمل القاسي في ظاهره، كانوا يرونه قمّة البرِّ والوفاء لصاحبه، ولم تخالج نفوسهم قطّ مشاعر الندم وتأنيب الضمير، وهنا يحقّ لنا أن نتساءل : ما الذي دفعهم إلى فعل ذلك ؟ وكيف برّروا لأنفسهم أن يُقدموا على فعلتهم الشنيعة ؟ ولماذا اختاروا هذه الكيفيّة العجيبة في التعامل مع تلك الجنازة ؟")
              // Continue adding Text widgets for the rest of your story

              ,SizedBox(height: 10.0),
              Text("وظلّ الرّجل يؤرّقه هذا الخاطر، ويفكّر في طريق الخلاص، حتى اهتدى إلى فكرة عجيبة، ما أن استقرّ عليها حتى جمع أولاده بين يديه، ثم قال لهم : ( أي أب كنت لكم ؟ ) فقالوا : ( خير أب ) ، عندها ألقى عليهم وصيّته الأخيرة : ( إذا أنا مت فأحرقوني ثم اطحنوني ثم ذروني في الريح ) ، وجاء في رواية أخرى للحديث قوله : ( ثم اذروا نصفي في البحر ونصفي في البرّ؛ فإني لم أعمل خيراً قط "),
            SizedBox(height: 10.0),
             Text("ونسي الرّجل في غمرة خوفه أن الذي خلق السماوات والأرض، وما فيهما من النجوم والكواكب، والدوابّ والخلائق، لن يعجزه أن يعيد واحداً من عباده إلى سيرته الأولى، ولو تفرّق رفاته في الهواء.")
             ,SizedBox(height: 10.0),
           Text("وكذلك كان الحال، وبكلمة (كن) عاد الرّجل كما كان، فسأله ربّه عزّ وجل : ( ما حملك على الذي صنعت ؟ ) .")
           ,SizedBox(height: 10.0),
          Text("لم يكن السؤال متعلّقاً بمعاصيه السابقة وذنوبه الفائته، إنما توجّه إلى وصيّته التي أوصى بها قبل موته، ويأتي جوابه : ( خشيتك وأنت أعلم ) ليدلّ على أن الخوف قد ملك على الرّجل قلبه فأعماه عن إدراك حدود قدرة الله المطلقة وإرادته الشاملة، ونظراً إلى ما قام في قلبه من التعظيم والهيبة تجاوز الله عنه فغفر له .")

          ,SizedBox(height: 16.0),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  _shareApp(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _shareApp(BuildContext context) {
    final RenderBox box = context.findRenderObject() as RenderBox;
    final String text =
        'تحقق من هذا التطبيق الرائع !'; // Customize your sharing message
    Share.share(
      text,
      subject: 'App Sharing',
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
    );
  }
}
