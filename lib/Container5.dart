import 'package:flutter/material.dart';
import 'anom.dart';
class Container5 extends StatefulWidget {
  Container5({Key? key}) : super(key: key);

  @override
  _Container5State createState() => _Container5State();
}
class _Container5State extends State<Container5> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => slepp()), // Use the correct widget class
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
              image: AssetImage("assets/images/baby.png"),
              fit: BoxFit.cover,
              height: 40,
              width: 40,
            ),
            SizedBox(
              width: 80,
            ),
            Text(
              "أذكار النوم",
              style: Theme
                  .of(context)
                  .textTheme
                  .headline1,
            ),
          ],
        ),
      ),
    );

  }
}