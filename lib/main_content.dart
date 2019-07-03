import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//        color: Colors.blueGrey,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.blueGrey, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.email,
                size: 30,
              ),
              title: Text('ekarifqi1@gmail.com'),
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
                size: 30,
              ),
              title: Text('+62 8223 76666 76'),
            ),
//            ListView.builder(
//              itemBuilder: (BuildContext context, int index) =>
//                  EntryItem(data[index]),
//              itemCount: data.length,
//            ),
          ],
        ));
  }
}
