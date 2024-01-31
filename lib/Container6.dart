import 'package:flutter/material.dart';
import 'alaistikth.dart';

class Container6 extends StatefulWidget {
  Container6({Key? key}) : super(key: key);

  @override
  _Container6State createState() => _Container6State();
}

class _Container6State extends State<Container6> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => wekinuo()), // Use the correct widget class
        );
      },
      child: Container(
        height: 100,
        width: 400,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage("assets/images/wake.png"),
              fit: BoxFit.cover,
              height: 40,
              width: 40,
            ),
            SizedBox(
              width: 80,
            ),
            Text(
              "أذكار الاستيقاظ",
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
    );
  }
}
