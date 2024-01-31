import 'package:flutter/material.dart';
import 'store1.dart';
import 'Store2.dart';
import 'Store3.dart';
import 'Store 4.dart';
class Stories extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<Stories> {
  List stories = [{
    "name": "تلك إذاً قسمة صحيحة ","image": "assets/images/mizen.jpg","pageholdet": Store1(),"firstligne":"دخلت حسناء البيت مسرعة ، فوجدت أمها ترتب الطعام على المائدة ، فبعد قليل يأتي والدها من العمل متعباً ، فيأكل ثم يصلي ليرتاح قليلاً قبل زيارة الجدة"
  },{
    "name": "الوفاء بالعهد ","image": "assets/images/waf.jpg","pageholdet": Store2(),"firstligne":"إني بحاجة إلى ألف دينار عدّاً ونقداً ،كي أدفع ثمن الثياب لذلك التاجر الذي ابتعتها منه ، ولا أستطيع الاعتذار ، فالبائع بعيد على الشاطئ الآخر من البحر ، وهو يعرفني أفي بالعهد"

  },{
    "name": "العمل الصالح يُنجي صاحبه ","image": "assets/images/sa.jpg","pageholdet": Store3(),"firstligne":"قال الصحابة الكرام لرسولهم الحبيب عليه الصلاة والسلام: قد حدثتنا ؛ يا رسول الله عن عيسى عليه السلام وقتله الدجال شر قتلة ، فهل يرتاح المسلمون بعد ذلك ؟"

  },
    {
      "name": "لم يعمل خيرا قط ","image": "assets/images/stor4.png","pageholdet": Store4(),"firstligne":"في يومٍ عاصف، وجوِّ شديد الحرارة، تقدّمت جنازةٌ مهيبة محمولة على الأكتاف، والذي باشر حملها وسار على إثرها هم ذريّة الميّت وأولاده، وقد ألقى الحزن بظلاله على الجميع.؟"

    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('قصص رواها النبي ﷺ',style: TextStyle(color: Colors.white)),
      ),
      body: Container(
         padding: EdgeInsets.all(15),
        child:
      ListView.builder(
        itemCount: stories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),

            decoration: BoxDecoration(color: Color(0xffbcc3bb),
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                        stories[index]["name"], style: TextStyle(
                  color: Colors.black,
                ),
                ),
                SizedBox(height: 10),
                Image.asset(stories[index]["image"], width: double.infinity, height: 150, fit: BoxFit.cover),
                SizedBox(height: 10),
                Text(
                  '${stories[index]["firstligne"].substring(0, 100)}...', // Display the first 100 characters
                  style: Theme.of(context).textTheme.headline2
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => stories[index]["pageholdet"]),
          );
          },
                  child: Text('قراءة المزيد'),



                ),
              ],
            ),
          );
        },
      ),
      ),
    );
  }


}

