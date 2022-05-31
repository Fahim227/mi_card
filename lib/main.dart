import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(child: my_card(context)),
      ),
    );
  }

  Widget my_card(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage("images/pro.jpg"),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Md. Fahim Islam",
          style: TextStyle(
              fontFamily: 'Pacifico', color: Colors.white, fontSize: 20),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "FLUTTER DEVELOPER",
          style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.teal.shade100,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        SizedBox(
          width: 250.0,
          child: Divider(height: 20,thickness: 1.0,color: Colors.white,),
        ),
        Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.red)
          ),
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: ListTile(
            leading:Icon(
              Icons.phone,
              color: Colors.teal,
            ),
            title: Text(
              "+88 9868 6699 87",
              style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
        ),

        Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.red)
          ),
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: ListTile(
            leading: Icon(
              Icons.mail,
              color: Colors.teal,
            ),
            title: Text(
              "fahim@gmail.com",
              style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        )
      ],
    );
  }

/*
* Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.teal,
                ),
                SizedBox(width: 10.0),
                Text("fahim@gmail.com",style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),)

              ],
            )
*
* */
  Widget layoutChallenge43(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: double.infinity,
          width: 100.0,
          color: Colors.red,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.yellow,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.green,
            ),
          ],
        ),
        Container(
          height: double.infinity,
          width: 100.0,
          color: Colors.blue,
        ),
      ],
    );
  }
}
