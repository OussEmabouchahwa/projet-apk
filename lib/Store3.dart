import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Store3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('العمل الصالح يُنجي صاحبه'),
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
              Text('العمل الصالح يُنجي صاحبه'),
              Image.asset("assets/images/sa.jpg"),
              Text(
                'ني بحاجة إلى ألف دينار عدّاً ونقداً ،كي أدفع ثمن الثياب لذلك التاجر الذي ابتعتها منه ، ولا أستطيع الاعتذار ، فالبائع بعيد على الشاطئ الآخر من البحر ، وهو يعرفني أفي بالعهد ، صادقاً ، لا أكذب الحديث ... إنه ينتظر في بلدته ، والسفينة ستقلع غداً صباحاً ، فماذا أفعل يا رب ، كنت أعتقد أن المال بحوزتي ، فإذا به أقل مما توقعت ، بعت حُلِيَّ زوجتي وبنتيّ ، واستغنيت عن بعض الأساسيات ، وما زال ينقصني ألف دينار ، من أين آتي بها؟ اللهم يسّرْ وأعنْ .. إنني أعرف أن الحاضرين من أهلي وأصدقائي لا يملكون مثل هذا المبلغ ، وسؤالي إياهم يُخجلهم ، ويخجلني ، فما اعتدت أن أسألهم لعلمي بحالهم ، وسيشعرون بالحرج إذا قصدتهم .. ماذا أفعل يا إلهي ؟!! لا بد من تيسير الله تعالى .. اللهم اجعل لي من أمري فرجاً .',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'آه ، تذكرت... إن عبد الله تاجر كبير في البلدة المجاورة ، يحب الخير ويسعى فيه ، ولعلني إن قصدته لا يخيب فيه أملي ... ولكنّ علاقتنا بسيطة لا تتعدى السلام والتحية . .. إلا أنه والحق يُقال شهم يلبي ذا الحاجة والمعسر ،وأنا محتاج ومعسر . فلْأذهب إليه ، لا تثريب عليّ إن عدْت من عنده خاليَ الوفاض ، لم أنلْ بغيتي ، إنما عليّ أن أبذل جهدي ، وعلى الله تعالى تدبيرُ الأمور ، وإن نلتُ منه حاجتي ، فقد سهّل الله أمري ... إذاً لا وقت للتردد يا يوسف ، فهيّا إلى ذلك الرجل الفاضل ، علّ الله يجعل التيسير على يديه .',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 10.0),
              // Continue adding Text widgets for the rest of your story

              SizedBox(height: 16.0),
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
        'Check out this awesome app!'; // Customize your sharing message
    Share.share(
      text,
      subject: 'App Sharing',
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
    );
  }
}
