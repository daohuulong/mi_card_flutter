import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      border: Border.all(width: 0.0, color: Colors.white),
      borderRadius: BorderRadius.all(
          Radius.circular(5.0) //         <--- border radius here
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/longportrail.png'),
              ),
            ),
            Text(
              'Dao Huu Long',
              style: TextStyle(
                fontFamily: 'Lobster-Regular',
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Flutter developer',
              style: TextStyle(
                fontFamily: 'FjallaOne-Regular',
                fontSize: 24,
              ),
            ),
            Divider(
              height: 10,
              thickness: 1,
              color: Colors.greenAccent,
              indent: 100,
              endIndent: 100,
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+44 123 456 789',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'daohuulong@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
