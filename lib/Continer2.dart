import 'package:flutter/material.dart';
import 'almsa.dart';
class Container2 extends StatefulWidget {
  Container2({Key? key}) : super(key: key);

  @override
  _Container2State createState() => _Container2State();
}
class _Container2State extends State<Container2> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => l3chia()), // Use the correct widget class
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
              image: AssetImage("assets/images/moun.png"),
              fit: BoxFit.cover,
              height: 40,
              width: 40,
            ),
            SizedBox(
              width: 80,
            ),
            Text(
              " أذكار المساء",
              style: Theme
                  .of(context)
                  .textTheme
                  .headline2,
            ),
          ],
        ),
      ),
    );

  }
}