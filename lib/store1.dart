import 'package:flutter/material.dart';
import 'package:share/share.dart';
class Store1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('تلك إذاً قسمة صحيحة'),
      ),
      body: SingleChildScrollView(
        child:Container(
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
            Text("تلك إذاً قسمة صحيحة"),
            Image.asset("assets/images/mizen.jpg"),
            Text(
              'دخلت حسناء البيت مسرعة ، فوجدت أمها ترتب الطعام على المائدة ، فبعد قليل يأتي والدها من العمل متعباً ، فيأكل ثم يصلي ليرتاح قليلاً قبل زيارة الجدة ، فشرعت في مساعدة أمها ، وأخبرتها أن معلمتها ذكرت لها قصة الحلاّبة وابنتها، فأعجبت بالبنت ونزاهتها وحسن إيمانها ، ورغبت أن تكون مثلها في التزامها آداب هذا الدين العظيم والتمسّك بأهدابه .... ولم تنتظر أن تطلب أمها أن تقص عليها قصتها ، فبدأت تقول :',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'إن الفاروق عمر رضي الله عنه خليفة المسلمين انطلق وخادمُه يعُسّ طرقات المدينة ، ويتفقد أمور المسلمين.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'فسمع امرأة تقول لابنتها : يا بنيّة امزقي ( اخلطي وامزجي )اللبن بالماء – كي يكثر فيزداد الربح- فقالت البنت لأمها : أم تعلمي أن أمير المؤمنين حذرنا من الغش.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'ن بالماء – كي يكثر فيزداد الربح- فقالت البنت لأمها : أم تعلمي أن أمير المؤمنين حذرنا من الغش، ومنع مزج الحليب بالماء ؟! قالت لها أمها : وأين منا أمير المؤمنين ؟ ... ردت البنت قائلة : إن كان أمير المؤمنين لا يرانا فربه سبحانه يرانا',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'أُعجب الفاروق بدين الفتاة وكريم خُلُقها ، وأمر صاحبه أن يضع علامة على البيت ، وقال له : ايتني بخبر أهل الدار',
              style: TextStyle(fontSize: 16.0),),

            SizedBox(height: 16.0),
            Text(
                "وفي الصباح قال خادمه: إنها امرأة تبيع الحليب وابنتها. فسأل الخليفة ابنه عاصماً: هل لك في زوجة صالحة؟ قال: نعم. فزوجه منها. فكانت هذه الزوجة الصالحة جدةََ الخليفة الأموي العادل عمر بن عبد العزيز. فرحت الأم بابنتها، وقبّلتها، وقالت: إنّ السُّحت يا ابنتي لا بركة فيه، ويُردي صاحبه في النار، والحلال يرفع شأن صاحبه في الدنيا، ويهديه إلى الجنة."


            ,style: TextStyle(fontSize: 16.0),
            ),Text(
                "إن رسول الله صلى الله عليه وسلم روى لأصحابه قصة مشابهة لما رويتِ، سأقصها عليك الآن ونحن نرتب الطعام على المائدة قبل أن يصل والدك."
            ),
            SizedBox(height: 8),
            Text(
                "تعلمين يا حسناء أن الخمر لم يكن محرّماً في أول الإسلام، ثم بدأت الدائرة تضيق على تناوله حتى حرّمه الله تعالى في قوله سبحانه:"
            ),
            SizedBox(height: 8),
            Text(
                "\"يا أيها الذين آمنوا، إنما الخمر والميسر والأنصاب والأزلام رجس من عمل الشيطان، فاجتنبوه لعلكم تفلحون، إنما يريد الشيطان أن يوقع بينكم العداوة والبغضاء في الخمر والميسر، ويصدكم عن ذكر الله وعن الصلاة فهل أنتم منتهون؟\""
            ),
            SizedBox(height: 8),
            Text("قالوا: انتهينا، يا رب، انتهينا.",),
            SizedBox(height: 16.0),
            Text(
              'ولعله كان في الأمم السابقة غير محرّم كذلك .',
              style: TextStyle(fontSize: 16.0),
            ),

            SizedBox(height: 16.0),
            Text(
                "فقد انطلق رجل بسفينته في النهر، يقف على هذه القرية وتلك القرية، وهذا الحي وذاك، يبيع الخمر للناس. وكان غشّاشاً، يخلط الخمر بالماء ليزداد بيعه، فيزداد ربحه."
            ),
            SizedBox(height: 8),
            Text(
                "وكثير من الناس في أيامنا هذه يفعل مثله ظنّاً منهم – وهذا قلة في الدين، وضعف في اليقين – أنهم يسرعون في الثراء، فيَشـُوبون الجيد بالرديء، أو يمزجون المتقاربين في النوع ليجنوا المال الكثير بالطرق غير المشروعة، فيخسرونه وأضعافه بطرق لا يشعرون بها، فقد تكون المرضَ، أو السرقةَ، أو الضياعَ، أو الإسرافَ، أو النكدَ في الحياة الذي يطغى على كثرة المال، فيفقدُ الإنسانُ الراحة وطعم السعادة."
            ),
            SizedBox(height: 8),
            Text(
                "وهذا كلُّه لا يساوي شيئاً أمام عذاب الله تعالى وغضبه... فما نبت من سحت فالنار أولى به."
            ),

            SizedBox(height: 16.0),

            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                _shareApp(context);
              },
            ),
            // Continue adding the rest of the text as needed
          ],
        ),
        ),),
    );
  }
}

void _shareApp(BuildContext context) {
  final RenderBox box = context.findRenderObject() as RenderBox;
  final String text = 'Check out this awesome app!'; // Customize your sharing message
  Share.share(text,
      subject: 'App Sharing',
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
}
